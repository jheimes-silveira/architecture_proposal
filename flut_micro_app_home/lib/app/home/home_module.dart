import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';

import 'presentation/ui/pages/home/home_controller.dart';
import 'presentation/ui/pages/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources

    //Controllers
    $HomeController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
  ];
}
