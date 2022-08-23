import 'package:flut_base_app_duck_drinks_with_flavors/app/app_module.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter/material.dart';

import 'app/app_widget.dart';

void main() async {
  await dotenv.load(fileName: ".env_qa");

  final Module module = AppModule(
      environment: Environment.env(
    Flavor.qa,
    dotenv.env,
  ));

  await initSettings(
    module: module,
    initialRoute: '/',
  );

  return runApp(
    AppWidget(),
  );
}
