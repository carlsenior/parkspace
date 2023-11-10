import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:park_space/localization/app_localization.dart';
import 'package:park_space/widgets/custom_image_view.dart';

import '../../../globals/theme/app_decoration.dart';
import '../../../globals/theme/custom_text_style.dart';
import '../../../globals/theme/theme_helper.dart';
import '../../../globals/utils/image_constant.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: const Alignment(0, 0),
              end: const Alignment(0.97, 1),
              colors: [
                appTheme.cyan60001,
                appTheme.teal200,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SizedBox(
              height: double.infinity,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  _buildLogo1SVG(context),
                  _buildLogo4SVG(context),
                  _buildLogo5SVG(context),
                  Positioned(
                    right: -3.w,
                    top: 228.h,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 438.h,
                        width: 335.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                          border: Border.all(
                            color: appTheme.whiteA700,
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 438.h,
                      width: 335.w,
                      margin: EdgeInsets.only(
                        right: 13.w,
                        bottom: 173.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                        border: Border.all(
                          color: appTheme.whiteA700,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 438.h,
                      width: 335.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                        border: Border.all(
                          color: appTheme.whiteA700,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 438.h,
                      width: 335.w,
                      margin: EdgeInsets.only(
                        left: 12.w,
                        top: 172.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                        border: Border.all(
                          color: appTheme.whiteA700,
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -4.w,
                    top: 153.h,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                        height: 438.h,
                        width: 335.w,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgOnboardPage2Staff,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  _buildEasyAnywhere(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEasyAnywhere(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.only(
          left: 67.w,
          bottom: 246.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 22.w,
          vertical: 14.h,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.h),
                topLeft: Radius.circular(8.h))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 180.w,
              margin: EdgeInsets.only(
                left: 5.w,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_easy_anywhere".tr,
                      style: CustomTextStyles.titleMediumLightblue70001,
                    ),
                    TextSpan(
                      text: "msg_in_the_palm_of_your".tr,
                      style: CustomTextStyles.bodyLargeLightblue70001,
                    ),
                    TextSpan(
                      text: "msg_your_hand".tr,
                      style: CustomTextStyles.titleMediumLightblue70001,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgPage2Logo3,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo1SVG(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: -18.w,
      width: 240.w,
      height: 240.h,
      child: CustomImageView(imagePath: ImageConstant.imgPage2Logo1),
    );
  }

  Widget _buildLogo4SVG(BuildContext context) {
    return Positioned(
        left: -30.w,
        top: -20.h,
        width: 220.w,
        height: 180.h,
        child: CustomImageView(
          imagePath: ImageConstant.imgPage2LineGroup,
        ));
  }

  Widget _buildLogo5SVG(BuildContext context) {
    return Positioned(
        right: -43.w,
        top: 40.h,
        width: 220.w,
        height: 180.h,
        child: CustomImageView(
          imagePath: ImageConstant.imgPage2Logo4,
        ));
  }
}
