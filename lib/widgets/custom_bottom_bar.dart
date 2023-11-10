// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:park_space/localization/app_localization.dart';

import '../globals/theme/theme_helper.dart';
import '../globals/utils/image_constant.dart';
import 'custom_image_view.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key, this.onChanged});

  final Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconsSearchOnprimarycontainer,
      activeIcon: ImageConstant.imgIconsSearchOnprimarycontainer,
      title: "lbl_search".tr,
      type: BottomBarEnum.Search,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconsHeartOnprimarycontainer,
      activeIcon: ImageConstant.imgIconsHeartOnprimarycontainer,
      title: "lbl_favorites".tr,
      type: BottomBarEnum.Favorites,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup50,
      activeIcon: ImageConstant.imgGroup50,
      title: "lbl_my_bookings".tr,
      type: BottomBarEnum.Mybookings,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMessages,
      activeIcon: ImageConstant.imgNavMessages,
      title: "lbl_messages".tr,
      type: BottomBarEnum.Messages,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUserOnprimarycontainer,
      activeIcon: ImageConstant.imgUserOnprimarycontainer,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77.h,
      decoration: BoxDecoration(
        color: appTheme.lightBlue700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 30.h,
                  width: 30.w,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 30.h,
                  width: 30.w,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Search,
  Favorites,
  Mybookings,
  Messages,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
