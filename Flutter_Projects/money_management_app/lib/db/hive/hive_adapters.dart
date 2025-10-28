import 'package:hive_ce/hive.dart';
import 'package:money_management_app/models/category/category_model.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([
  AdapterSpec<CategoryModel>(),
  AdapterSpec<CategoryType>(),
])
class HiveAdapters {}