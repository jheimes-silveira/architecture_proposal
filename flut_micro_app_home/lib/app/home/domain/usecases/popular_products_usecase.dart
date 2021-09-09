import 'package:flut_micro_app_home/app/home/domain/models/product.dart';

abstract class PopularProductsUsecase {
  Future<List<Product>> call();
}
  