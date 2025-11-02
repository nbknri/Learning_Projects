import 'package:flutter/material.dart';
import 'package:money_management_app/db/category/category_db.dart';
import 'package:money_management_app/db/transactions/transaction_db.dart';
import 'package:money_management_app/models/transactions/transaction_model.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryDb.instance.refreshUI();
    TransactionDb.instance.refreshUI();
    return ValueListenableBuilder(
      valueListenable: TransactionDb().transactionListListener,
      builder:
          (BuildContext context, List<TransactionModel> newList, Widget? _) {
            return ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                final transaction = newList[index];
                return Card(
                  elevation: 0,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Text("26\nOct", textAlign: TextAlign.center),
                    ),
                    title: Text(transaction.amount.toString()),
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
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 5),
              itemCount: newList.length,
            );
          },
    );
  }
}
