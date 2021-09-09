import 'package:flut_micro_app_home/app/home/domain/models/product.dart';
import 'package:flut_micro_app_home/app/home/domain/usecases/popular_products_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

final $HomeController = BindInject(
  (i) => HomeController(i.get()),
  isSingleton: true,
  isLazy: true,
);

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final PopularProductsUsecase _popularProductsUsecase;

  @observable
  List<Product> products = [];

  _HomeControllerBase(this._popularProductsUsecase);

  @action
  popularProductsUsecase() async {
    products = await _popularProductsUsecase();
  }
}
