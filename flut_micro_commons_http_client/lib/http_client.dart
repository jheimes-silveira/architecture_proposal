import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';

class HttpClient extends DioForNative {
  final Environment environment;

  HttpClient._(this.environment) {
    options = BaseOptions(
      baseUrl: environment.baseUrl,
      connectTimeout: 1000 * 15,
      receiveTimeout: 1000 * 15,
    );

    options.headers["content-type"] = "application/json";
  }
}
