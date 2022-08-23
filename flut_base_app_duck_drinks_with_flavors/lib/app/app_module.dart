import 'package:flut_micro_app_home/app/home/home_module.dart';
import 'package:flut_micro_app_product/app/product/product_module.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/controllers/app_controller.dart';
import 'presentation/ui/pages/splash/splash_controller.dart';
import 'presentation/ui/pages/splash/splash_page.dart';

class AppModule extends Module {
  final Environment _environment;

  AppModule({required Environment environment}) : _environment = environment;

  @override
  List<Bind> get binds => [
        Bind.singleton((i) => _environment),
        $AppController,
        $SplashController,
      ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => SplashPage()),
    ModuleRoute(
      '/home',
      module: HomeModule(),
    ),
    ModuleRoute(
      '/product',
      module: ProductModule(),
    ),
  ];
}
