import 'package:flutter/material.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('Income Category $index'),
            trailing: IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.delete)),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 5),
      itemCount: 50,
    );
  }
}
