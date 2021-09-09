import 'package:flut_micro_app_home/app/home/domain/models/product.dart';

abstract class PopularProductsRepository {
  Future<List<Product>> call();
}
  