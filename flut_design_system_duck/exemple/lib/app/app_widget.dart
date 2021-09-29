import 'package:flut_design_system_duck/flut_design_system_duck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duck Designer System',
      theme: hakTheme(),
      initialRoute: '/home/menu/dashboard',
    ).modular();
  }

  ThemeData hakTheme() {
    return ThemeData(
      primarySwatch: DuckColors.primary,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: DuckColors.primary[500],
          textStyle: TextStyle(
            color: DuckColors.primaryVariant,
          ),
        ),
      ),
    );
  }
}