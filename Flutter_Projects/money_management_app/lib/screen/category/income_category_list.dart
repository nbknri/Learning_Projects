import 'package:flutter/material.dart';
import 'package:money_management_app/db/category/category_db.dart';
import 'package:money_management_app/models/category/category_model.dart';

class IncomeCategoryList extends StatelessWidget {
  const IncomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: CategoryDb().incomeCategoryListListener,
      builder: (BuildContext context, List<CategoryModel> newList, Widget? _) {
        return ListView.separated(
          itemBuilder: (context, index) {
            final category = newList[index];
            return Card(
              child: ListTile(
                title: Text(category.name),
                trailing: IconButton(
                  onPressed: () {
                    CategoryDb.instance.deleteCategory(category.id);
                  },
                  icon: const Icon(Icons.delete),
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
