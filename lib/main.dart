import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:park_space/globals/settings/router/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'globals/constants/constants.dart';
import 'globals/theme/theme_helper.dart';
import 'globals/utils/helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();

  String initRoute = AppRoutes.appHome;

  bool isAuthenticated = prefs.getBool(CONSTANTS().getAuthKey) ?? false;
  if (!isAuthenticated) {
    initRoute = AppRoutes.onLogin;
  }

  bool isPassedOnboard = prefs.getBool(CONSTANTS().getOnBoardedKey) ?? false;
  if (!isPassedOnboard) {
    initRoute = AppRoutes.onBoard;
  }

  // Full screen mode
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);

  // SystemChrome.setSystemUIOverlayStyle(
  // SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  // status bar and navigation bar customize
  Helper helper = Helper();
  helper.setStatusbarColor(
    Colors.transparent,
  );

  // app theme
  ThemeHelper().changeTheme('primary');

  // run app
  runApp(App(
    prefs: prefs,
    initRoute: initRoute,
  ));
}
