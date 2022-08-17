
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

abstract class PopularProductsDatasource {
  Future<List<Product>> call();
}
  