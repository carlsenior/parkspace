import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  // ignore: no_leading_underscores_for_local_identifiers
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.lightBlue700,
            width: 2.w,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 2,
        space: 2,
        color: appTheme.blueGray900,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray60001,
          fontSize: 16.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray60001,
          fontSize: 14.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: colorScheme.onPrimaryContainer,
          fontSize: 12.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 28.sp,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 12.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 20.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 16.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 14.sp,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF17BEBF),
    secondaryContainer: Color(0XFF29CF57),

    // On colors(text colors)
    onPrimary: Color(0XFF242E42),
    onPrimaryContainer: Color(0XFFF8F8F8),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // White
  Color get white900 => const Color(0xFFF9F9F9);

  // Black
  Color get black900 => const Color(0XFF000000);

  // BlueGray
  Color get blueGray100 => const Color(0XFFD3D3D3);
  Color get blueGray50 => const Color(0XFFEFEFF4);
  Color get blueGray900 => const Color(0XFF313131);

  // Cyan
  Color get cyan400 => const Color(0XFF29CFCF);
  Color get cyan600 => const Color(0XFF08BABB);
  Color get cyan60001 => const Color(0XFF009ECD);
  Color get cyan60002 => const Color(0XFF0D9FCC);

  // DeepOrange
  Color get deepOrange700 => const Color(0XFFEA3A22);
  Color get deepOrange70001 => const Color(0XFFEB3A22);

  // DeepPurple
  Color get deepPurpleA200 => const Color(0XFF9747FF);

  // Gray
  Color get gray100 => const Color(0XFFF7F7F7);
  Color get gray200 => const Color(0XFFEFEFEF);
  Color get gray20001 => const Color(0XFFEAE8E8);
  Color get gray500 => const Color(0XFFACACAC);
  Color get gray600 => const Color(0XFF7A7A7A);
  Color get gray60001 => const Color(0XFF7E7E7E);

  // Green
  Color get greenA100 => const Color(0XFFA9ECBC);

  // LightBlue
  Color get lightBlue700 => const Color(0XFF0095C2);
  Color get lightBlue70001 => const Color(0XFF009ACA);

  // Teal
  Color get teal200 => const Color(0XFF7DCED1);

  // White
  Color get whiteA700 => const Color(0XFFFFFFFF);

  // Yellow
  Color get yellow400 => const Color(0XFFFFF960);
  Color get yellow800 => const Color(0XFFF79E1B);
  Color get yellowA700 => const Color(0XFFFFD600);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
