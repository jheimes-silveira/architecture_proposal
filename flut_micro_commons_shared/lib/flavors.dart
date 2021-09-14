enum Flavor {
  DEV,
  QA,
  PRD,
}

class F {
  static late Flavor _appFlavor;
  static late String _title;
  static late String _name;
  static late String _url;
  static late int _receiveTimeout;
  static late int _connectTimeout;

  F({
    required Flavor appFlavor,
    required String title,
    required String name,
    required String url,
    required int receiveTimeout,
    required int connectTimeout,
  }) {
    _appFlavor = appFlavor;
    _title = title;
    _name = name;
    _url = url;
    _receiveTimeout = receiveTimeout;
    _connectTimeout = connectTimeout;
  }
  static Flavor get appFlavor {
    return _appFlavor;
  }

  static String get title {
    return _title;
  }

  static String get name {
    return _name;
  }

  static String get url {
    return _url;
  }

  static int get receiveTimeout {
    return _receiveTimeout;
  }

  static int get connectTimeout {
    return _connectTimeout;
  }
}
