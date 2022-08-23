import 'package:flut_base_app_duck_drinks_with_flavors/app/app_module.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter/material.dart';

import 'app/app_widget.dart';

void main() async {
  await dotenv.load(fileName: ".env_prd");

  final Module module = AppModule(
      environment: Environment.env(
    Flavor.prd,
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
