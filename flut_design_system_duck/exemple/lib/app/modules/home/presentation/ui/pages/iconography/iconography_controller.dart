import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'iconography_controller.g.dart';

final $IconographyController = BindInject(
  (i) => IconographyController(),
  isSingleton: true,
  isLazy: true,
);

class IconographyController = _IconographyControllerBase with _$IconographyController;

abstract class _IconographyControllerBase with Store {
  @observable
  bool loading = false;

  @action
  void setLoading(bool value) {
    loading = value;
  }
}