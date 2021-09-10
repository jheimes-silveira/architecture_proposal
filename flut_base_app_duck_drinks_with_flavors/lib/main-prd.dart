import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flavors.dart';
import 'package:flut_micro_core/flut_micro_core.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

void main() async {
  F.appFlavor = Flavor.PRD;
  WidgetsFlutterBinding.ensureInitialized();

  return runApp(
    LocalizationWidget(
      child: ModularApp(
        module: AppModule(),
        child: AppWidget(
          initialRoute: '/',
        ),
      ),
    ),
  );
}
