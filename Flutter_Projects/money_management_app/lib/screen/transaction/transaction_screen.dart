import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:money_management_app/db/category/category_db.dart';
import 'package:money_management_app/db/transactions/transaction_db.dart';
import 'package:money_management_app/models/category/category_model.dart';
import 'package:money_management_app/models/transactions/transaction_model.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryDb.instance.refreshUI();
    TransactionDb.instance.refreshUI();
    return ValueListenableBuilder(
      valueListenable: TransactionDb.instance.transactionListListener,
      builder:
          (BuildContext context, List<TransactionModel> newList, Widget? _) {
            return ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                final transaction = newList[index];
                return Slidable(
                  key: ValueKey(transaction.id),
                  startActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (ctx) {
                          TransactionDb.instance.deleteTransactions(
                            transaction.id!,
                          );
                        },
                        icon: Icons.delete,
                        foregroundColor: Colors.red,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: Card(
                    // elevation: 0,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: transaction.type == CategoryType.income
                            ? Colors.green
                            : Colors.red,
                        radius: 30,
                        child: Text(
                          parseDate(transaction.date),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      title: Text('Rs. ${transaction.amount}'),
                      subtitle: Text(transaction.purpose),
                      trailing: IconButton(
                        onPressed: () {
                          TransactionDb.instance.deleteTransactions(
                            transaction.id!,
                          );
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemCount: newList.length,
            );
          },
    );
  }

  String parseDate(DateTime date) {
    var datFormat = DateFormat.MMM();
    var monthSpell = datFormat.format(date);

    return '${date.day}\n${monthSpell.toString()}';
  }
}
