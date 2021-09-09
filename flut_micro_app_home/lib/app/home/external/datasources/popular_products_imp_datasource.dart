import 'package:flut_micro_app_home/app/home/domain/models/product.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../data/datasources/popular_products_datasource.dart';

final $PopularProductsImpDatasource = BindInject(
  (i) => PopularProductsImpDatasource(),
  isSingleton: true,
  isLazy: true,
);

class PopularProductsImpDatasource implements PopularProductsDatasource {
  @override
  Future<List<Product>> call() async {
    return demoProducts;
  }
}

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      'assets/images/produto_1.png',
    ],
    title: 'Kit Mix Brasil & Espanha (4 garrafas)',
    price: 156.99,
    description: description,
  ),
  Product(
    id: 2,
    images: [
      'assets/images/produto_2.png',
    ],
    title: 'Kit Refrescantes Intercontinentais (6 garrafas)',
    price: 230.50,
    description: description,
  ),
  Product(
    id: 3,
    images: [
      'assets/images/produto_3.png',
    ],
    title: 'Kit Brancos Espanha & Argentina (2 garrafas)',
    price: 70.55,
    description: description,
  ),
];

const String description =
    "Maecenas nec mollis sem, sagittis aliquet quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dictum feugiat sem gravida venenatis.";
