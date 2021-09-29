// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_components_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListComponentsController on _ListComponentsControllerBase, Store {
  final _$componetsAtom = Atom(name: '_ListComponentsControllerBase.componets');

  @override
  ObservableList<Map<String, dynamic>> get componets {
    _$componetsAtom.reportRead();
    return super.componets;
  }

  @override
  set componets(ObservableList<Map<String, dynamic>> value) {
    _$componetsAtom.reportWrite(value, super.componets, () {
      super.componets = value;
    });
  }

  final _$_ListComponentsControllerBaseActionController =
      ActionController(name: '_ListComponentsControllerBase');

  @override
  void filterListComponets(String query) {
    final _$actionInfo = _$_ListComponentsControllerBaseActionController
        .startAction(name: '_ListComponentsControllerBase.filterListComponets');
    try {
      return super.filterListComponets(query);
    } finally {
      _$_ListComponentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
componets: ${componets}
    ''';
  }
}
