import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:park_space/globals/constants/constants.dart';
import 'package:park_space/globals/providers/app_state_provider.dart';
import 'package:park_space/globals/settings/router/app_routes.dart';
import 'package:park_space/localization/app_localization.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../components/images/blur_widget.dart';
import '../../../globals/theme/app_decoration.dart';
import '../../../globals/theme/custom_text_style.dart';
import '../../../globals/theme/theme_helper.dart';
import '../../../globals/utils/image_constant.dart';
import '../../../widgets/custom_elevated_button.dart';

enum Languages { english, french, portuguese, spanish, italian, turkish }

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  Languages? selectedLanguage = Languages.english;
  List<String> titles = [
    "lbl_english".tr,
    "lbl_fran_ais".tr,
    "lbl_portugu_s".tr,
    "lbl_espa_ol".tr,
    "lbl_italiano".tr,
    "lbl_turk".tr
  ];

  @override
  Widget build(BuildContext context) {
    AppStateProvider provider = Provider.of<AppStateProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildF(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 18.h,
                  ),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL30,
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List<Widget>.generate(
                          titles.length * 2 + 1,
                          (index) => (index < titles.length * 2 &&
                                  index % 2 == 0)
                              ? Material(
                                  child: RadioListTile<Languages>(
                                    fillColor: MaterialStateProperty.all<Color>(
                                        HexColor('##009ACA')),
                                    activeColor: HexColor('#009ACA'),
                                    tileColor: HexColor('#F9F9F9'),
                                    selectedTileColor: HexColor('#F9F9F9'),
                                    value:
                                        Languages.values[(index / 2).round()],
                                    title: Text(
                                      titles[(index / 2).round()],
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    groupValue: selectedLanguage,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedLanguage = value;
                                      });
                                    },
                                    selected: selectedLanguage ==
                                        Languages.values[(index / 2).round()],
                                  ),
                                )
                              : index == titles.length * 2
                                  ? CustomElevatedButton(
                                      text: "lbl_submit".tr,
                                      onPressed: () {
                                        provider.hasOnBoard(
                                            selectedLanguage.toString());

// Submit Action
                                        SharedPreferences prefs =
                                            provider.getPrefs;
                                        bool isAuthenticated = prefs.getBool(
                                                CONSTANTS().getAuthKey) ??
                                            false;
                                        if (!isAuthenticated) {
                                          Navigator.of(context)
                                              .pushReplacementNamed(
                                                  AppRoutes.onLogin);
                                        } else {
                                          Navigator.of(context)
                                              .pushReplacementNamed(
                                                  AppRoutes.appHome);
                                        }
                                      },
                                    )
                                  : SizedBox(
                                      height: index == titles.length * 2 - 1
                                          ? 60.h
                                          : 28.h))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildF(BuildContext context) {
    return Positioned(
      left: -50.w,
      top: -50.h,
      right: 0,
      height: 287.h,
      child: Stack(alignment: Alignment.center, children: [
        BlurWidget(
            blur: 2.5,
            width: double.infinity,
            blurColor: appTheme.cyan60001.withOpacity(0.6),
            imageURL: ImageConstant.imgStaffJPGURLPage3),
        Container(
          transform: Matrix4.translationValues(-30.w, 12.h, 0),
          child: Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_language".tr,
                    style: CustomTextStyles.titleMediumOnPrimaryContainer18,
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    "msg_preferred_language".tr,
                    style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
