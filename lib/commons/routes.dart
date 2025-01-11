import 'package:nusacode_flutter_3/pages/example_button_page.dart';
import 'package:nusacode_flutter_3/pages/example_hive.dart';
import 'package:nusacode_flutter_3/pages/example_listview_builder_page.dart';
import 'package:nusacode_flutter_3/pages/example_product_page.dart';
import 'package:nusacode_flutter_3/pages/my_home_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String product = '/product';
  static const String hive = '/hive';
  static const String exampleButton = '/example-button';
  static const String footballPlayer = '/football-player';
}

final routes = {
  AppRoutes.home: (context) => const MyHomePage(
        title: "Nusacode Flutter 3",
      ),
  AppRoutes.product: (context) => const ProductPage(),
  AppRoutes.hive: (context) => const ExampleHivePage(),
  AppRoutes.exampleButton: (context) => ExampleButtonPage(),
  AppRoutes.footballPlayer: (context) => ExampleListBuilderPage(),
};
