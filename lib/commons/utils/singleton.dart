import 'package:get/get.dart';
import 'package:nusacode_flutter_3/data/database/init/app_database.dart';
import 'package:nusacode_flutter_3/data/database/product_db.dart';

void setupSingleton() {
  final database = AppDatabase();
  Get.put(database);
  
  final productDb = ProductDb(Get.find<AppDatabase>());
  Get.put<ProductDb>(productDb);
}