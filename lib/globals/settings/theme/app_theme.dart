import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

final ThemeData appThemeData = _appThemeData();
// ignore: non_constant_identifier_names
Color custom_yellow = HexColor('#FFD600');

ThemeData _appThemeData() { 
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
        primary: HexColor('#0096C2'),
        secondary: HexColor('#17BEBF'),
        background: Colors.white,
      ),
      textTheme: _appTextThemeData(base.textTheme));
}

TextTheme _appTextThemeData(TextTheme base) => base.copyWith(
  headlineMedium: base.headlineMedium.copyWith(
    fontFamily: 'Poppins',
    fontSize: 28
  )
)
