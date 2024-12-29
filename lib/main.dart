import 'package:flutter/material.dart';
import 'package:nusacode_flutter_3/commons/themes/dark_theme.dart';
import 'package:nusacode_flutter_3/commons/themes/light_theme.dart';
import 'package:nusacode_flutter_3/pages/example_button_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: ExampleButtonPage(),
    );
  }
}
