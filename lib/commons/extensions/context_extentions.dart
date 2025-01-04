import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  Future<T?> push<T extends Object?>(Widget page) =>
      Navigator.push<T>(this, MaterialPageRoute(builder: (context) => page));

  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) =>
      Navigator.pushNamed<T>(this, routeName, arguments: arguments);
}
