import 'package:flut_micro_commons_shared/models/product.dart';

abstract class PopularProductsRepository {
  Future<List<Product>> call();
}
