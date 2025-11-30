import 'package:flutter/material.dart';
import 'package:news/core/resources/app_const/app_color.dart';


class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.white,
    brightness: Brightness.light,
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppColor.black,
    brightness: Brightness.dark,
  );
}
