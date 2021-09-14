import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flut_micro_commons_shared/flavors.dart';

class HttpClient extends DioForNative {
  static HttpClient? _instance;

  static HttpClient? get instance {
    _instance ??= HttpClient._();
    return _instance;
  }

  HttpClient._() {
    options = BaseOptions(
      baseUrl: F.url,
      connectTimeout: F.connectTimeout,
      receiveTimeout: F.receiveTimeout,
    );

    options.headers["content-type"] = "application/json";
  }
}
