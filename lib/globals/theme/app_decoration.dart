import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_helper.dart';

class AppDecoration {
  // Branco decorations
  static BoxDecoration get branco => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan60001.withOpacity(0.39),
      );
  static BoxDecoration get fillCyan60001 => BoxDecoration(
        color: appTheme.cyan60001.withOpacity(0.6),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue700,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientCyanToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0, 0),
          end: const Alignment(0.97, 1),
          colors: [
            appTheme.cyan60001,
            appTheme.teal200,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray100,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: appTheme.cyan60001.withOpacity(0.6),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9002 => const BoxDecoration();
  static BoxDecoration get outlineBlack9003 => const BoxDecoration();
  static BoxDecoration get outlineDeepPurpleA => const BoxDecoration();
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray600,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.gray600,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineLightBlue => BoxDecoration(
        border: Border.all(
          color: appTheme.lightBlue700,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineLightblue700 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.lightBlue700,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineLightblue7001 => BoxDecoration(
        border: Border.all(
          color: appTheme.lightBlue700,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineLightblue7002 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        border: Border.all(
          color: appTheme.lightBlue700,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightblue7003 => BoxDecoration(
        color: appTheme.lightBlue700,
        border: Border.all(
          color: appTheme.lightBlue700,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              3,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL30 => BorderRadius.only(
        topLeft: Radius.circular(30.h),
        topRight: Radius.circular(30.h),
        bottomLeft: Radius.circular(8.h),
        bottomRight: Radius.circular(8.h),
      );
  static BorderRadius get customBorderTL40 => BorderRadius.vertical(
        top: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    