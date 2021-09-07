import 'package:flut_micro_app_home/app/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/controllers/app_controller.dart';
import 'presentation/ui/pages/splash/splash_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    $AppController,
    $SplashController,
  ];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute('/', child: (_, __) => SplashPage()),
    ModuleRoute(
     '/',
      module: HomeModule(),
    ),
    // ModuleRoute(
    //   '/onboarding',
    //   module: OnboardingModule(),
    // ),
    // ModuleRoute(
    //   '/register-shop',
    //   module: RegisterShopModule(),
    // ),
  ];
}
