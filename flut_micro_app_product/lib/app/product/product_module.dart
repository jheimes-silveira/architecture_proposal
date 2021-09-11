import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/ui/pages/product/product_controller.dart';
import 'presentation/ui/pages/product/product_page.dart';
import 'presentation/ui/pages/list_product/list_product_controller.dart';
import 'presentation/ui/pages/list_product/list_product_page.dart';

class ProductModule extends Module {
  @override
  final List<Bind> binds = [
    //Usercases

    //Repositories

    //Datasources

    //Controllers
    $ProductController,
    $ListProductController,
  ];

  @override
  final List<ModularRoute> routes = [
    //Pages
    ChildRoute(
      '/product',
      child: (_, args) => ProductPage(
        product: args.data,
      ),
    ),
    ChildRoute(
      '/list-product',
      child: (_, args) => ListProductPage(),
    ),
  ];
}
