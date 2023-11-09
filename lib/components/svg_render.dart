import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgRender extends StatelessWidget {
  const SvgRender({Key? key, required this.svgURL}) : super(key: key);

  final String svgURL;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgURL,
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      semanticsLabel: 'svg',
    );
  }
}
