import 'package:flutter/material.dart';
import 'package:money_management_app/db/category/category_db.dart';
import 'package:money_management_app/db/transactions/transaction_db.dart';
import 'package:money_management_app/models/category/category_model.dart';
import 'package:money_management_app/models/transactions/transaction_model.dart';

class AddTransactionScreen extends StatefulWidget {
  static const routeName = 'add-transaction';
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  DateTime? _selectedDate;
  CategoryType? _selectedCategoryType;
  CategoryModel? _selectedCategoryModel;
  String? _selectedCategoryId;

  final _purposeEditingController = TextEditingController();
  final _amountEditingController = TextEditingController();

  @override
  void initState() {
    _selectedCategoryType = CategoryType.income;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: _purposeEditingController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(hintText: 'Purpose'),
              ),
              TextFormField(
                controller: _amountEditingController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Amount'),
              ),
              TextButton.icon(
                onPressed: () async {
                  final selectedDateTemp = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(Duration(days: 60)),
                    lastDate: DateTime.now(),
                  );
                  if (selectedDateTemp == null) {
                    return;
                  } else {
                    setState(() {
                      _selectedDate = selectedDateTemp;
                    });
                  }
                },
                label: Text(
                  _selectedDate == null
                      ? "Select Date"
                      : _selectedDate.toString(),
                ),
                icon: Icon(Icons.calendar_month),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      RadioGroup(
                        onChanged: (newValue) {
                          setState(() {
                            _selectedCategoryType = CategoryType.income;
                            _selectedCategoryId = null;
                          });
                        },
                        groupValue: _selectedCategoryType,
                        child: Radio(value: CategoryType.income),
                      ),
                      Text("Income"),
                    ],
                  ),
                  Row(
                    children: [
                      RadioGroup(
                        onChanged: (newValue) {
                          setState(() {
                            _selectedCategoryType = CategoryType.expense;
                            _selectedCategoryId = null;
                          });
                        },
                        groupValue: _selectedCategoryType,
                        child: Radio(value: CategoryType.expense),
                      ),
                      Text("Expense"),
                    ],
                  ),
                ],
              ),
              DropdownButton(
                hint: Text("Select Category"),
                value: _selectedCategoryId,
                items:
                    (_selectedCategoryType == CategoryType.income
                            ? CategoryDb().incomeCategoryListListener
                            : CategoryDb().expenseCategoryListListener)
                        .value
                        .map((e) {
                          return DropdownMenuItem(
                            value: e.id,
                            onTap: () {
                              _selectedCategoryModel = e;
                            },
                            child: Text(e.name),
                          );
                        })
                        .toList(),
                onChanged: (selectedValue) {
                  setState(() {
                    _selectedCategoryId = selectedValue;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  addTransaction();
                },
                child: Text("Add"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> addTransaction() async {
    final purposeText = _purposeEditingController.text;
    final amountText = _amountEditingController.text;

    if (purposeText.isEmpty) {
      return;
    }

    if (amountText.isEmpty) {
      return;
    }

    if (_selectedDate == null) {
      return;
    }

    if (_selectedCategoryModel == null) {
      return;
    }

    final parsedAmount = double.tryParse(amountText);
    if (parsedAmount == null) {
      return;
    }

    final transactions = TransactionModel(
      purpose: purposeText,
      amount: parsedAmount,
      date: _selectedDate!,
      type: _selectedCategoryType!,
      category: _selectedCategoryModel!,
    );

    TransactionDb.instance.addTransactions(transactions);
    Navigator.of(context).pop();
  }
}
