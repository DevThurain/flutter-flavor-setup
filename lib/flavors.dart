enum Flavor {
  qa,
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.qa:
        return 'Flavor(QA)';
      case Flavor.dev:
        return 'Flavor(DEV)';
      case Flavor.prod:
        return 'Flavor';
      default:
        return 'title';
    }
  }

}
