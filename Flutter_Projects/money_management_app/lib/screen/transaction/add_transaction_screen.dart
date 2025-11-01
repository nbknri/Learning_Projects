import 'package:flutter/material.dart';
import 'package:money_management_app/db/category/category_db.dart';
import 'package:money_management_app/models/category/category_model.dart';

class AddTransactionScreen extends StatefulWidget {
  static const routeName = 'add-transaction';
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  DateTime? _selectedDate;
  CategoryType? _selectedCategoryType;
  // CategoryModel? _selectedCategoryModel;
  String? _selectedCategoryId;

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
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(hintText: 'Purpose'),
              ),
              TextFormField(
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
              ElevatedButton(onPressed: () {}, child: Text("Add")),
            ],
          ),
        ),
      ),
    );
  }
}
