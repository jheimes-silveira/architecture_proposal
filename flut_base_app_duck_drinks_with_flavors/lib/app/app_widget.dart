import 'package:flut_design_system_duck/theme/theme.dart';
import 'package:flut_micro_app_home/app/home/presentation/ui/pages/home/home_page.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/controllers/app_controller.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _controller = Modular.get<AppController>();

  @override
  void initState() {
    super.initState();

    _controller.loadLangs();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      title: 'Flutter Slidy',
      theme: theme(),
      builder: (context, widget) {
        if (_canShowWaterMark()) {
          return _waterMark(context, widget);
        }
        return widget!;
      },
    );
  }

  bool _canShowWaterMark() {
    return _controller.environment.flavor != Flavor.prd;
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
                    _controller.environment.name.toUpperCase(),
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
                        _controller.versionName ?? '',
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
                        _controller.buildNumber ?? '',
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
