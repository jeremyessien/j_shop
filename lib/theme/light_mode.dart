import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: Colors.grey.shade200,
      secondary: Colors.white,
      inversePrimary: Colors.grey.shade700),
);

class AppColor {
  Color background = Colors.grey.shade300;
  Color primary = Colors.grey.shade200;
  Color secondary = Colors.white;
  Color inversePrimary = Colors.grey.shade700;
}
