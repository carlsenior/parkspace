import 'package:flutter/material.dart';
import 'package:parker/globals/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateProvider extends ChangeNotifier {
  AppStateProvider() : super();

  void hasOnBoard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(CONSTANTS.onboarded.name, true);
    notifyListeners();
  }
}
