import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'list_product_controller.g.dart';

final $ListProductController = BindInject(
  (i) => ListProductController(),
  isSingleton: true,
  isLazy: true,
);

class ListProductController = _ListProductControllerBase with _$ListProductController;

abstract class _ListProductControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}