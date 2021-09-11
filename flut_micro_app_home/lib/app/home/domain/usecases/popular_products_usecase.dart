import 'package:flut_micro_commons_shared/models/product.dart';

abstract class PopularProductsUsecase {
  Future<List<Product>> call();
}
