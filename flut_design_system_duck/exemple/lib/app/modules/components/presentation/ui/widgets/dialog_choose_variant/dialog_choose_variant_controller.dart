import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'dialog_choose_variant_controller.g.dart';

final $DialogChooseVariantController = BindInject(
  (i) => DialogChooseVariantController(),
  isSingleton: false,
  isLazy: true,
);

class DialogChooseVariantController = _DialogChooseVariantControllerBase
    with _$DialogChooseVariantController;

abstract class _DialogChooseVariantControllerBase with Store {
  @observable
  dynamic selected;

  @action
  setSelected(dynamic selected) {
    this.selected = selected;
  }
}
