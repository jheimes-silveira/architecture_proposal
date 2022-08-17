import 'package:flut_micro_app_home/app/home/domain/repositories/popular_products_repository.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'popular_products_usecase.dart';

final $PopularProductsImpUsecase = BindInject(
  (i) => PopularProductsImpUsecase(i.get()),
  isSingleton: true,
  isLazy: true,
);

class PopularProductsImpUsecase implements PopularProductsUsecase {
  final PopularProductsRepository _popularProductsRepository;

  PopularProductsImpUsecase(this._popularProductsRepository);
  @override
  Future<List<Product>> call() {
    return _popularProductsRepository();
  }
}
