import 'package:flutter/widgets.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:money_management_app/models/transactions/transaction_model.dart';

const transactionDbName = "transaction-database";

abstract class TransactionDbFunctions {
  Future<List<TransactionModel>> getTransactions();
  Future<void> addTransactions(TransactionModel obj);
  Future<void> deleteTransactions(String transactionId);
}

class TransactionDb implements TransactionDbFunctions {
  TransactionDb._internal();
  static TransactionDb instance = TransactionDb._internal();
  factory TransactionDb() {
    return instance;
  }

  ValueNotifier<List<TransactionModel>> transactionListListener = ValueNotifier(
    [],
  );

  @override
  Future<void> addTransactions(TransactionModel obj) async {
    final transactionDb = await Hive.openBox<TransactionModel>(
      transactionDbName,
    );
    await transactionDb.put(obj.id, obj);
    refreshUI();
  }

  @override
  Future<List<TransactionModel>> getTransactions() async {
    final transactionDb = await Hive.openBox<TransactionModel>(
      transactionDbName,
    );
    return transactionDb.values.toList();
  }

  Future<void> refreshUI() async {
    final allTransactions = await getTransactions();
    allTransactions.sort((first, second) => second.date.compareTo(first.date));
    transactionListListener.value = allTransactions;
  }

  @override
  Future<void> deleteTransactions(String transactionId) async {
    final transactionDb = await Hive.openBox<TransactionModel>(
      transactionDbName,
    );
    await transactionDb.delete(transactionId);
    refreshUI();
  }
}
