import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flavors.dart';
import 'package:flutter/material.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  F(
    appFlavor: Flavor.DEV,
    title: 'Duck Drink DEV',
    name: 'DEV',
    url: 'https://dev.dominio.com.br',
    receiveTimeout: 10 * 1000,
    connectTimeout: 10 * 1000,
  );

  return runApp(
    LocalizationWidget(
      child: ModularApp(
        module: AppModule(),
        child: AppWidget(),
      ),
    ),
  );
}
