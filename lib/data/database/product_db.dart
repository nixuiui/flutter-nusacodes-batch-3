import 'package:drift/drift.dart';
import 'package:nusacode_flutter_3/data/database/init/app_database.dart';

class ProductDb {

  late final AppDatabase db;

  ProductDb(this.db);

  Future<void> addProduct(String name, double price) async {
    final data = ProductsCompanion(
      name: Value(name), 
      price: Value(price)
    );

    await db.into(db.products).insert(data);
  }

  Future<void> updateProduct(int id, String name, double price) async {
    final data = ProductsCompanion(
      name: Value(name), 
      price: Value(price)
    );

    final query = db.update(db.products)..where((t) => t.id.equals(id));
    await query.write(data);
  }

  Future<List<Product>> getAllProducts() async {
    final data = await db.select(db.products).get();
    return data;
  }

  Future<void> deleteProduct(int id) async {
    final query = db.delete(db.products)..where((t) => t.id.equals(id));
    await query.go();
  }

}