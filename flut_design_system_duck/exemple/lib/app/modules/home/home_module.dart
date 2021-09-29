import 'package:exemple/app/modules/components/components_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/ui/pages/dashboard/dashboard_controller.dart';
import 'presentation/ui/pages/dashboard/dashboard_page.dart';

import 'presentation/ui/pages/home/home_controller.dart';
import 'presentation/ui/pages/home/home_page.dart';
import 'presentation/ui/pages/iconography/iconography_controller.dart';
import 'presentation/ui/pages/iconography/iconography_page.dart';
import 'presentation/ui/pages/typography/typography_controller.dart';
import 'presentation/ui/pages/typography/typography_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources

    //Controllers
		$DashboardController,
    $IconographyController,
    $TypographyController,
    $HomeController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/home',
      child: (_, args) => HomePage(),
    ),
    //Pages
		ChildRoute(
			'/dashboard',
			child: (_, args) => DashboardPage(),
		),

    ChildRoute(
      '/menu',
      child: (_, args) => HomePage(),
      children: [
        ChildRoute(
          '/dashboard',
          child: (_, args) => DashboardPage(),
        ),
        ChildRoute(
          '/iconography',
          child: (_, args) => IconographyPage(),
        ),
        ChildRoute(
          '/typography',
          child: (_, args) => TypographyPage(),
        ),
        ModuleRoute(
          '/list/component',
          module: ComponentsModule(),
        ),
      ],
    ),
  ];
}
