enum Flavor {
  development,
  production,
}

class Config {
  static Flavor appFlavor = Flavor.production;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'Mój Dziennik';

      case Flavor.production:
        return 'Wdzięczność';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.development:
        return 'http://my-json-server.typicode.com/iwonarudzinska/Examples-of-gratitude-json';

      case Flavor.production:
        return 'http://my-json-server.typicode.com/iwonarudzinska/Examples-of-gratitude-json';
    }
  }

  static bool get debugShowCheckedModeBanner {
    switch (appFlavor) {
      case Flavor.development:
        return true;

      case Flavor.production:
        return false;
    }
  }

  static String get goals {
    switch (appFlavor) {
      case Flavor.development:
        return 'CELE';

      case Flavor.production:
        return 'Moje cele';
    }
  }

  static String get grateful {
    switch (appFlavor) {
      case Flavor.development:
        return 'WDZIĘCZNOŚĆ';

      case Flavor.production:
        return 'Moje wdzięczności';
    }
  }
}
