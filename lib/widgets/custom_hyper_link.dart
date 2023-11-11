import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../globals/theme/theme_helper.dart';

class CustomHyperLink extends StatelessWidget {
  const CustomHyperLink({
    super.key,
    required this.text,
    this.callback,
  });

  final String text;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback ?? () {},
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: text,
            style: TextStyle(
              color: appTheme.lightBlue70001,
              fontFamily: 'Outfit',
              // decoration: TextDecoration.underline,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ))
      ])),
    );
  }
}
