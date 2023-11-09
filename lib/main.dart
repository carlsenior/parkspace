import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:park_space/globals/utils/helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Full screen mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  Helper helper = Helper();
  helper.setStatusbarColor(Colors.transparent);

  // run app
  runApp(App(prefs: prefs));
}
