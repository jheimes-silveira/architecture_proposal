import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'typography_controller.g.dart';

final $TypographyController = BindInject(
  (i) => TypographyController(),
  isSingleton: true,
  isLazy: true,
);

class TypographyController = _TypographyControllerBase with _$TypographyController;

abstract class _TypographyControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}