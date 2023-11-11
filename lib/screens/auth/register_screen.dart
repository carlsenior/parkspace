import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:park_space/localization/app_localization.dart';
import 'package:park_space/widgets/app_bar/appbar_leading_image.dart';

import '../../components/images/blur_widget.dart';
import '../../globals/theme/app_decoration.dart';
import '../../globals/theme/custom_text_style.dart';
import '../../globals/theme/theme_helper.dart';
import '../../globals/utils/image_constant.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/cutom_phone_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<RegisterScreen> {
  TextEditingController phoneNumberController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              width: 390.w,
              height: 844.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  BlurWidget(
                    blur: 0.1,
                    blurColor: appTheme.cyan60001.withOpacity(0.39),
                    imageURL: ImageConstant.imgStaffJPGURLPage3,
                    width: 390.w,
                    height: 295.h,
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
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24.w,
                        vertical: 18.h,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30,
                          color: appTheme.white900),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup128,
                            height: 70.h,
                            width: 152.w,
                          ),
                          SizedBox(height: 51.h),
                          Text(
                            "lbl_sign_in_now".tr,
                            style: CustomTextStyles.bodyLargeRegular18,
                          ),
                          SizedBox(height: 46.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "lbl_phone_number".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          CutomPhoneTextField(
                            controller: phoneNumberController,
                            hintText: "msg_enter_phone_number".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.phone,
                            fillColor: Colors.transparent,
                            autofocus: false,
                            obscureText: true,
                          ),
                          SizedBox(height: 56.h),
                          CustomElevatedButton(
                            text: "lbl_continue".tr,
                          ),
                          SizedBox(height: 28.h),
                          Text(
                            "msg_or_continue_with".tr,
                            style: CustomTextStyles.bodyLargeRegular,
                          ),
                          SizedBox(height: 26.h),
                          _buildIconsFacebook(context),
                          // SizedBox(height: 26.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIconsFacebook(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.w,
        vertical: 13.h,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.iconFaceBook,
            height: 24.h,
            width: 24.w,
            margin: EdgeInsets.only(
              top: 7.h,
              bottom: 6.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.w,
              top: 8.h,
              bottom: 7.h,
            ),
            child: Text(
              "lbl_facebook".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainerMedium,
            ),
          ),
          const Spacer(
            flex: 60,
          ),
          SizedBox(
            height: 37.h,
            child: VerticalDivider(
              width: 2.w,
              thickness: 2.h,
              color: appTheme.whiteA700,
            ),
          ),
          const Spacer(
            flex: 39,
          ),
          CustomImageView(
            imagePath: ImageConstant.iconGoogle,
            height: 20.h,
            width: 20.w,
            margin: EdgeInsets.only(
              top: 9.h,
              bottom: 8.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.h, 10.h, 21.h, 5.h),
            child: Text(
              "lbl_google".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainerMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBarLeftButton extends StatelessWidget {
  const CustomAppBarLeftButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      alignment: Alignment.topLeft,
      imagePath: ImageConstant.iconArrowLeft,
      width: 20.w,
      height: 20.h,
      margin: EdgeInsets.only(top: 50.h, left: 30.w),
      onTap: () {
        //TODO
      },
    );
  }
}
