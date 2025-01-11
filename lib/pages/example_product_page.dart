import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:nusacode_flutter_3/commons/extensions/context_extentions.dart';
import 'package:nusacode_flutter_3/data/database/init/app_database.dart';
import 'package:nusacode_flutter_3/data/database/product_db.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final productDb = Get.find<ProductDb>();

  var products = <Product>[];

  @override
  void initState() {
    getAllProducts();
    super.initState();
  }

  Future<void> addProduct(String name, double price) async {
    await productDb.addProduct(name, price);
    await getAllProducts();
  }

  Future<void> updateProduct(int id, String name, double price) async {
    productDb.updateProduct(id, name, price);
    await getAllProducts();
  }

  Future<void> getAllProducts() async {
    final data = await productDb.getAllProducts();
    setState(() {
      products = data;
    });
  }

  Future<void> deleteProduct(int id) async {
    await productDb.deleteProduct(id);
    await getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produk"),
        actions: [
          IconButton(
            onPressed: () => context.push(DriftDbViewer(Get.find<AppDatabase>())), 
            icon: Icon(Icons.storage)
          ),
          IconButton(
            onPressed: () => addProduct("Apple Watch", 7000000), 
            icon: Icon(Icons.add)
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: products.length,
        separatorBuilder: (_, __) => Divider(height: 1),
        itemBuilder: (_, index) {
          final product = products[index];
          return ListTile(
            title: Text("${product.id}. ${product.name}"),
            subtitle: Text("${product.price ?? 0}"),
            onTap: () => updateProduct(product.id, "Apple Mac Mini", 20000000),
            trailing: IconButton(
              onPressed: () => deleteProduct(product.id), 
              icon: Icon(Icons.delete)
            ),
          );
        },
      ),
    );
  }
}
