import 'package:flutter/material.dart';

extension DoubleExtensions on int {
  SizedBox get height => SizedBox(height: toDouble());
}
