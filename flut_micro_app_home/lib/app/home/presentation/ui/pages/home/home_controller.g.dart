// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$productsAtom = Atom(name: '_HomeControllerBase.products');

  @override
  List<Product> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<Product> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$popularProductsUsecaseAsyncAction =
      AsyncAction('_HomeControllerBase.popularProductsUsecase');

  @override
  Future popularProductsUsecase() {
    return _$popularProductsUsecaseAsyncAction
        .run(() => super.popularProductsUsecase());
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
