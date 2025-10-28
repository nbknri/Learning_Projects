enum CategoryType { income, expense }

class CategoryModel {
  final String id;
  final String name;
  final CategoryType type;
  final bool isDeleted;

  CategoryModel({
    required this.id,
    required this.name,
    required this.type,
    this.isDeleted = false,
  });

  @override
  String toString() => '$name $type';
}
