
import 'package:flut_micro_commons_shared/models/product.dart';

abstract class PopularProductsDatasource {
  Future<List<Product>> call();
}
  