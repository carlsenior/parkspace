import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:park_space/globals/settings/router/app_routes.dart';
import 'package:park_space/localization/app_localization.dart';

import '../../components/images/blur_widget.dart';
import '../../globals/theme/app_decoration.dart';
import '../../globals/theme/custom_text_style.dart';
import '../../globals/theme/theme_helper.dart';
import '../../globals/utils/image_constant.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_hyper_link.dart';
import '../../widgets/custom_text_form_field.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
            key: _formKey,
            child: SizedBox(
              width: 390.w,
              height: 844.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  BlurWidget(
                    blur: 1.6,
                    blurColor: appTheme.cyan60001.withOpacity(0.39),
                    imageURL: ImageConstant.imgStaffJPGURLPage3,
                    width: double.infinity,
                    height: 480.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: AppbarLeadingImage(
                      imagePath: ImageConstant.iconArrowLeft,
                      width: 20.w,
                      height: 20.h,
                      margin: EdgeInsets.only(left: 30.w, top: 56.h),
                      onTap: () {
                        exit(0);
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 18.h),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30,
                          color: appTheme.white900),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "lbl_sign_in".tr,
                            style: CustomTextStyles.bodyLargeRegular18,
                          ),
                          SizedBox(
                            height: 46.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_password".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          CustomTextFormField(
                            controller: passwordController,
                            hintText: "lbl_enter_password".tr,
                            textInputAction: TextInputAction.done,
                            fillColor: Colors.transparent,
                            autofocus: false,
                            obscureText: true,
                            validator: (value) {
                              // TODO
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 56.h,
                          ),
                          CustomElevatedButton(
                            text: "lbl_log_in".tr,
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomHyperLink(
                                text: "lbl_sign_up".tr,
                                callback: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.onRegister);
                                },
                              ),
                              CustomHyperLink(
                                text: "lbl_forgot_my_password".tr,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 36.h,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );

    //   return CustomTextFormField(
    //     controller: passwordController,
    //     hintText: "lbl_enter_password".tr,
    //     textInputAction: TextInputAction.done,
    //     textInputType: TextInputType.visiblePassword,
    //     obscureText: true,
    //     contentPadding: EdgeInsets.symmetric(
    //       horizontal: 24.w,
    //       vertical: 200.h,
    //     ),
    //     borderDecoration: TextFormFieldStyleHelper.fillOnPrimaryContainer,
    //     fillColor: theme.colorScheme.onPrimaryContainer,
    //   );
  }
}
