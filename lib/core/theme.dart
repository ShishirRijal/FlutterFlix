import 'package:flutter/material.dart';
import 'package:flutterflix/presentation/resources/color_manager.dart';

// Getter
ThemeData get theme => _theme;

// App Theme
ThemeData _theme = ThemeData(
    scaffoldBackgroundColor: ColorManager.black,
    //* App Bar
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0.0,
        titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
