import 'package:flutter/material.dart';
import 'package:money_management_app/db/category/category_db.dart';
import 'package:money_management_app/models/category/category_model.dart';

ValueNotifier<CategoryType> selectedCategoryNotifier = ValueNotifier(
  CategoryType.income,
);

Future<void> showCategoryAddPopup(BuildContext context) async {
  final nameEditingController = TextEditingController();
  showDialog(
    context: context,
    builder: (ctx) {
      return SimpleDialog(
        title: Text("Add Category"),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: nameEditingController,
              decoration: InputDecoration(
                hintText: 'Category Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                RadioButton(title: 'Income', type: CategoryType.income),
                RadioButton(title: 'Expense', type: CategoryType.expense),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                final _name = nameEditingController.text;
                final _type = selectedCategoryNotifier.value;
                if (_name.isEmpty) {
                  return;
                } else {
                  final _category = CategoryModel(
                    id: DateTime.now().millisecondsSinceEpoch.toString(),
                    name: _name,
                    type: _type,
                  );
                  CategoryDb().insertCategory(_category);
                  Navigator.pop(ctx);
                }
              },
              child: Text("Add"),
            ),
          ),
        ],
      );
    },
  );
}

class RadioButton extends StatelessWidget {
  final String title;
  final CategoryType type;
  const RadioButton({super.key, required this.title, required this.type});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedCategoryNotifier,
      builder: (BuildContext context, CategoryType newCategory, Widget? _) {
        return RadioGroup<CategoryType>(
          groupValue: selectedCategoryNotifier.value,
          onChanged: (value) {
            if (value == null) {
              return;
            } else {
              selectedCategoryNotifier.value = value;
              // selectedCategoryNotifier.notifyListeners();
            }
          },
          child: Row(
            children: [
              Radio<CategoryType>(value: type),
              Text(title),
            ],
          ),
        );
      },
    );
  }
}
