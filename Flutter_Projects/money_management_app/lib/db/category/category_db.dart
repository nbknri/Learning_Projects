import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:money_management_app/models/category/category_model.dart';

const categoryDbName = 'category-database';

abstract class CategoryDbFunctions {
  Future<List<CategoryModel>> getCategories();
  Future<void> insertCategory(CategoryModel value);
  Future<void> deleteCategory(String categoryId);
}

class CategoryDb implements CategoryDbFunctions {
  CategoryDb._internal();
  static CategoryDb instance = CategoryDb._internal();
  factory CategoryDb() {
    return instance;
  }

  ValueNotifier<List<CategoryModel>> incomeCategoryListListener = ValueNotifier(
    [],
  );
  ValueNotifier<List<CategoryModel>> expenseCategoryListListener =
      ValueNotifier([]);

  @override
  Future<void> insertCategory(CategoryModel value) async {
    final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
    await categoryDb.put(value.id, value);
    refreshUI();
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
    return categoryDb.values.toList();
  }

  Future<void> refreshUI() async {
    final allCategories = await getCategories();
    incomeCategoryListListener.value.clear();
    expenseCategoryListListener.value.clear();
    await Future.forEach(allCategories, (CategoryModel category) {
      if (category.type == CategoryType.income) {
        incomeCategoryListListener.value = [
          ...incomeCategoryListListener.value,
          category,
        ];
      } else {
        expenseCategoryListListener.value = [
          ...expenseCategoryListListener.value,
          category,
        ];
      }
    });
  }
  
  @override
  Future<void> deleteCategory(String categoryId) async {
    final categoryDb = await Hive.openBox<CategoryModel>(categoryDbName);
    categoryDb.delete(categoryId); 
    refreshUI();
  }
}
