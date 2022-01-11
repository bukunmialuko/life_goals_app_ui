import 'package:flutter/material.dart';
import 'font_family.dart';

class AppTheme {
  AppTheme._();

  static get getLightTheme => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: FontFamily.poppins,
        primarySwatch: Colors.blue,
      );

  static get getDarkTheme => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: FontFamily.poppins,
        primarySwatch: Colors.blue,
      );
}
