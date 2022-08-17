import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

abstract class PopularProductsUsecase {
  Future<List<Product>> call();
}
