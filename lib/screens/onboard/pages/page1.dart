import 'package:flutter/material.dart';

import '../../../globals/theme/theme_helper.dart';
import '../../../globals/utils/image_constant.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgOnboaringOne,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
