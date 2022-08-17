import 'package:flut_design_system_duck/theme/theme.dart';
import 'package:flut_micro_app_home/app/home/presentation/ui/pages/home/home_page.dart';
import 'package:flut_micro_commons_shared/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/controllers/app_controller.dart';

class AppWidget extends StatefulWidget {
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
      initialRoute: '/',
      theme: theme(),
      builder: (context, widget) {
        if (_canShowWaterMark()) {
          return _waterMark(context, widget);
        }
        return widget!;
      },
    ).modular();
  }

  bool _canShowWaterMark() {
    return F.appFlavor != Flavor.PRD;
  }

  Widget _waterMark(BuildContext context, Widget? widget) {
         return Scaffold(
            body: Stack(
              children: [
                widget!,
                Positioned(
                  right: 40,
                  bottom: 100,
                  child: IgnorePointer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          F.name.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.5),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Observer(
                          builder: (_) {
                            return Text(
                              controller.versionName ?? '',
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            );
                          },
                        ),
                        Observer(
                          builder: (_) {
                            return Text(
                              controller.buildNumber ?? '',
                              style: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
