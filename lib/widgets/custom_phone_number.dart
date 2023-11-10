import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:park_space/localization/app_localization.dart';

import '../globals/theme/theme_helper.dart';
import 'custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.controller,
  }) : super(
          key: key,
        );

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 2.h,
              width: 339.w,
              margin: EdgeInsets.only(top: 33.h),
              decoration: BoxDecoration(
                color: appTheme.gray60001,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 105.w,
                  top: 3.h,
                  bottom: 10.h,
                ),
                child: CustomTextFormField(
                  width: 228.w,
                  controller: controller,
                  hintText: "msg_enter_phone_number".tr,
                  textInputType: TextInputType.phone,
                  contentPadding: EdgeInsets.symmetric(horizontal: -66.w),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 1.h,
          width: 339.w,
          decoration: BoxDecoration(
            color: appTheme.gray60001,
          ),
        ),
      ],
    );
  }
}
