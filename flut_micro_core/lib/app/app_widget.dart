import 'package:flut_micro_core/app/presentation/controllers/app_controller.dart';
import 'package:flut_design_system_duck/theme.dart';
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
      theme: theme(),
    ).modular();
  }
}
