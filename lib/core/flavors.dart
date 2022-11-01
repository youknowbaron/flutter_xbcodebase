enum Flavor {
  dev,
  prod
}

class F {
  static Flavor appFlavor = Flavor.dev;

  static String get name => appFlavor.name;

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return 'https://gimic-sns-dev.tk';
      case Flavor.prod:
        return 'https://gimic-sns-dev.tk';
    }
  }

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Listify Dev';
      case Flavor.prod:
        return 'Listify';
    }
  }
}
