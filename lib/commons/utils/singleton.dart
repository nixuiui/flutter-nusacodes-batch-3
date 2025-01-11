import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:nusacode_flutter_3/data/database/init/app_database.dart';
import 'package:nusacode_flutter_3/data/database/product_db.dart';
import 'package:nusacode_flutter_3/data/local_storage/theme_local_storage.dart';
import 'package:path_provider/path_provider.dart';

Future<void> setupSingleton() async {
  final database = AppDatabase();
  Get.put(database);
  
  final productDb = ProductDb(Get.find<AppDatabase>());
  Get.put<ProductDb>(productDb);

  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  final box = await Hive.openBox("app");
  Get.put(box);
  Get.put(ThemeLocalStorage(box));
}