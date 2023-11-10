import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeInterGray500 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeLightblue70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlue70001,
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeLightblue70001Regular =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightBlue70001,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRegular18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRegular_1 => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallBluegray900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallGray60001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodySmallLightblue700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightBlue700,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeCyan600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.cyan600,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.sp,
      );
  static get titleLargeGray60001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.sp,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumDeeporange70001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepOrange70001,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleMediumLightblue700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLightblue70001 => theme.textTheme.titleMedium!.copyWith(
      color: appTheme.lightBlue70001,
      fontSize: 17.sp,
      fontWeight: FontWeight.w700,
      height: 1.4);
  static get titleMediumLightblue70001Bold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue70001,
        fontSize: 17.sp,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumLightblue700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightBlue700,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.sp,
      );
  static get titleMediumOnPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.sp,
      );
  static get titleMediumYellowA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellowA700,
      );
  static get titleSmallCyan400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan400,
      );
  static get titleSmallDeeporange700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrange700,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
      );
  static get titleSmallLightblue700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightBlue700,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
