import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flutter/material.dart';

Future<void> initSettings({
  required Module module,
  required String initialRoute,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  Modular.init(module);

  await _setInitialRoute(initialRoute);
}

Future<void> _setInitialRoute(String? initial) async {
  String initialRoute = initial ?? '/';

  Modular.setInitialRoute(initialRoute);
}
