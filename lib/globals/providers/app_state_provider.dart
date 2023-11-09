import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';

class AppStateProvider extends ChangeNotifier {
  AppStateProvider() : super();

  void hasOnBoard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(CONSTANTS.onboarded.name, true);
    notifyListeners();
  }
}
