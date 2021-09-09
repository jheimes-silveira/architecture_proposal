import 'package:flutter_modular/flutter_modular.dart';
import 'data/repositories/popular_products_imp_repository.dart';
import 'external/datasources/popular_products_imp_datasource.dart';
import 'domain/usecases/popular_products_imp_usecase.dart';
import 'presentation/ui/pages/home/home_controller.dart';
import 'presentation/ui/pages/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases
		$PopularProductsImpUsecase,

    //Repositories
		$PopularProductsImpRepository,

    //Datasources
		$PopularProductsImpDatasource,

    //Controllers
    $HomeController,
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
  ];
}
