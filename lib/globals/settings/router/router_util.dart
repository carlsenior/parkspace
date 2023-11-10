// ignore: camel_case_types
enum APP_PAGE {
  onboard,
  auth,
  home,
}

extension AppPageExtension on APP_PAGE {
  String get routePath {
    switch (this) {
      case APP_PAGE.onboard:
        return '/onboard';
      case APP_PAGE.auth:
        return '/auth';
      case APP_PAGE.home:
        return '/';
      default:
        return '/';
    }
  }

  String get routeName {
    switch (this) {
      case APP_PAGE.onboard:
        return 'onboard';
      case APP_PAGE.auth:
        return 'auth';
      case APP_PAGE.home:
        return '/';
      default:
        return '/';
    }
  }

  String get routePageTitle {
    switch (this) {
      case APP_PAGE.onboard:
        return 'On-Board';
      case APP_PAGE.auth:
        return 'Register';
      case APP_PAGE.home:
        return 'Home';
      default:
        return 'Home';
    }
  }
}
