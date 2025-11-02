import 'package:money_management_app/models/category/category_model.dart';

class TransactionModel {
  String? id;
  final String purpose;
  final double amount;
  final DateTime date;
  final CategoryType type;
  final CategoryModel category;

  TransactionModel({
    required this.purpose,
    required this.amount,
    required this.date,
    required this.type,
    required this.category,
  }) {
    id = DateTime.now().millisecondsSinceEpoch.toString();
  }
}
