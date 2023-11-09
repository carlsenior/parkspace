import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  AppTheme();
  double pixelRatio = 0.0;

// ignore: non_constant_identifier_names
  Color custom_yellow = HexColor('#FFD600');

  ThemeData appThemeData() {
    final ThemeData base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
        colorScheme: base.colorScheme.copyWith(
          primary: HexColor('#0096C2'),
          secondary: HexColor('#17BEBF'),
          background: Colors.white,
        ),
        textTheme: _appTextThemeData(base.textTheme),
        elevatedButtonTheme:
            _appElevationButtonTheme(base.elevatedButtonTheme));
  }

  TextTheme _appTextThemeData(TextTheme base) => base.copyWith(
        // Title
        headlineMedium: base.headlineMedium!.copyWith(
            fontFamily: 'Poppins',
            fontSize: 28, // 28px
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            height: 2.5,
            color: Colors.black),
        // Header style, Section Title style
        titleLarge: base.titleLarge!.copyWith(
            fontFamily: 'Outfit',
            fontSize: 17,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            height: 1.5,
            color: HexColor('#009ACA')),
        titleMedium: base.titleMedium!.copyWith(
            fontFamily: 'Outfit',
            fontSize: 17,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: HexColor('#009ACA')),
        titleSmall: base.titleSmall!.copyWith(
            fontFamily: 'Outfit',
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            height: 1.5,
            color: HexColor('#323232')),
        // SubTitle style, SubText style
        labelMedium: base.labelMedium!.copyWith(
            fontFamily: 'Outfit',
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: HexColor('#7E7E7E')),
      );

  ElevatedButtonThemeData _appElevationButtonTheme(
          ElevatedButtonThemeData base) =>
      ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(HexColor('#17BEBF')),
              foregroundColor:
                  MaterialStateProperty.all<Color>(HexColor('##F9F9F9')),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))));
}
