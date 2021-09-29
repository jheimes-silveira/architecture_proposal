// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_choose_variant_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DialogChooseVariantController
    on _DialogChooseVariantControllerBase, Store {
  final _$selectedAtom =
      Atom(name: '_DialogChooseVariantControllerBase.selected');

  @override
  dynamic get selected {
    _$selectedAtom.reportRead();
    return super.selected;
  }

  @override
  set selected(dynamic value) {
    _$selectedAtom.reportWrite(value, super.selected, () {
      super.selected = value;
    });
  }

  final _$_DialogChooseVariantControllerBaseActionController =
      ActionController(name: '_DialogChooseVariantControllerBase');

  @override
  dynamic setSelected(dynamic selected) {
    final _$actionInfo = _$_DialogChooseVariantControllerBaseActionController
        .startAction(name: '_DialogChooseVariantControllerBase.setSelected');
    try {
      return super.setSelected(selected);
    } finally {
      _$_DialogChooseVariantControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selected: ${selected}
    ''';
  }
}
