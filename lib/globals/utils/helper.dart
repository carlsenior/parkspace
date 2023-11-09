import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Helper {
  double convertPX2DP(BuildContext context, int px) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return px / pixelRatio;
  }

  void setStatusbarColor(Color c, {bool dark = false}) {
    SystemChrome.setSystemUIOverlayStyle(dark
        ? SystemUiOverlayStyle.dark
            .copyWith(statusBarColor: c, systemNavigationBarColor: c)
        : SystemUiOverlayStyle.light
            .copyWith(statusBarColor: c, systemNavigationBarColor: c));
  }
}
