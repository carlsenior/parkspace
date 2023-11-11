import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../globals/theme/custom_text_style.dart';
import '../globals/theme/theme_helper.dart';

class CutomPhoneTextField extends StatelessWidget {
  const CutomPhoneTextField({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus,
    this.textStyle,
    this.obscureText,
    this.textInputAction,
    this.textInputType,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;

  final double? width;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FutureOr<String?> Function(PhoneNumber?)? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: phoneField,
          )
        : phoneField;
  }

  Widget get phoneField => SizedBox(
        width: width ?? double.maxFinite,
        child: IntlPhoneField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? theme.textTheme.bodyLarge,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: TextInputType.phone,
          decoration: decoration,
          // TODO
          // validator: validator ?? () {},
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? CustomTextStyles.bodyLargeInterGray500,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        // contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 8.h),
        fillColor: fillColor ?? appTheme.whiteA700,
        filled: filled,
        border: borderDecoration ??
            UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(
                color: appTheme.gray60001.withOpacity(0.5),
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(
                color: appTheme.gray60001,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            UnderlineInputBorder(
              // borderRadius: BorderRadius.circular(8.h),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 1,
              ),
            ),
      );
}
