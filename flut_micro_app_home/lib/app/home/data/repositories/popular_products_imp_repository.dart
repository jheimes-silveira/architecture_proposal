import 'package:flut_micro_app_home/app/home/data/datasources/popular_products_datasource.dart';
import 'package:flut_micro_app_home/app/home/domain/models/product.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/repositories/popular_products_repository.dart';

final $PopularProductsImpRepository = BindInject(
  (i) => PopularProductsImpRepository(i.get()),
  isSingleton: true,
  isLazy: true,
);

class PopularProductsImpRepository implements PopularProductsRepository {
  final PopularProductsDatasource _popularProductsDatasource;

  PopularProductsImpRepository(this._popularProductsDatasource);

  @override
  Future<List<Product>> call() {
    return _popularProductsDatasource();
  }
}
