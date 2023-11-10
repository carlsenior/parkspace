import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';

class AppStateProvider extends ChangeNotifier {
  AppStateProvider({required this.prefs}) : super();

  final SharedPreferences prefs;

  void hasOnBoard(String language) {
    prefs.setBool(CONSTANTS().getOnBoardedKey, true);
    prefs.setString(CONSTANTS().selecgtedLanguageKey, language);
    notifyListeners();
  }

  get getPrefs {
    return prefs;
  }
}
