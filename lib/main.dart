import 'package:flutter/material.dart';
import 'package:nusacode_flutter_3/pages/example_button_page.dart';
import 'package:nusacode_flutter_3/pages/example_listview_builder_page.dart';
import 'package:nusacode_flutter_3/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(
              title: "Nusacode Flutter 3",
            ),
        '/example-button': (context) => ExampleButtonPage(),
        '/football-player': (context) => ExampleListBuilderPage(),
      },
    );
  }
}
