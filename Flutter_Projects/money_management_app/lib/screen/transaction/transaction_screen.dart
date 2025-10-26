import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return const Card(
          elevation: 0,
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: Text("26\nOct", textAlign: TextAlign.center),
            ),
            title: Text("Rs. 10000"),
            subtitle: Text("Travel"),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemCount: 10,
    );
  }
}
