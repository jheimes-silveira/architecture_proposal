import 'package:flut_design_system_duck/theme/theme.dart';
import 'package:flut_micro_commons_shared/flavors.dart';
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
      theme: theme(),
      builder: (context, widget) {
        if (F.appFlavor != Flavor.PRD) {
          return Scaffold(
            body: Stack(
              children: [
                widget!,
                Positioned(
                  right: 56,
                  bottom: 130,
                  child: Text(
                    F.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return widget!;
      },
    ).modular();
  }
}
