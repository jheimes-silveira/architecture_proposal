enum Flavor {
  DEV,
  QA,
  PRD,
}

class F {
  static Flavor appFlavor = Flavor.PRD;

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'Duck Drinks Dev';
      case Flavor.QA:
        return 'Duck Drinks QA';
      case Flavor.PRD:
        return 'Duck Drinks';
      default:
        return 'title';
    }
  }

  static String get url {
    switch (appFlavor) {
      case Flavor.DEV:
        return '';
      case Flavor.QA:
        return '';
      case Flavor.PRD:
        return '';
      default:
        return '';
    }
  }
}
