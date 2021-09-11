import 'package:flut_micro_commons_shared/models/product.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Routers {
  static goToProduct(Product product) {
    return Modular.to.pushNamed(
      '/product',
      arguments: product,
    );
  }

  static void pop<T extends Object>([T? result]) {
    if (result != null) {
      Modular.to.pop(result);
      return;
    }

    Modular.to.pop();
  }

  Routers._();
}
