import 'package:flut_micro_core/app/presentation/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  final String initialRoute;

  AppWidget({required this.initialRoute});

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends ModularState<AppWidget, AppController> {
  @override
  void initState() {
    super.initState();

    controller.loadLangs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      initialRoute: widget.initialRoute,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(),
          ),
        ),
        textTheme: _buildTextTheme(),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
    ).modular();
  }

  TextTheme _buildTextTheme() {
    return TextTheme(
      subtitle1: TextStyle(
        fontSize: 16.0,
        letterSpacing: 0.15,
      ),
      headline2: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.15,
      ),
      headline3: TextStyle(
        fontSize: 20.0,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w400,
      ),
      headline4: TextStyle(
        fontSize: 16.0,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
