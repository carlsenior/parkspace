import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:park_space/components/filled_image.dart';
import 'package:park_space/components/svg_render.dart';
import 'package:park_space/globals/constants/constants.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double strokeRectWidth = screenWidth * 0.85;
    double strokeRectHeight = screenHeight * 0.55;
    double strokeWidthGap = (screenWidth - strokeRectWidth + 10) / 4.0;
    double strokeHeightGap = strokeWidthGap + 2.0;

    double initStrokeRectTop =
        (screenHeight - strokeRectHeight - 4 * strokeHeightGap) / 2.0 +
            5 * strokeHeightGap;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [HexColor('#009ECD'), HexColor('#7DCED1')])),
      child: Stack(
        children: [
          const Positioned(
              left: 33,
              top: 33,
              width: 127,
              height: 178,
              child: SvgRender(
                  svgURL:
                      'assets/images/onboard/page2/Group_238585_onboard_page2.svg')),
          const Positioned(
              right: -80,
              top: -20,
              width: 358,
              height: 372,
              child: SvgRender(
                  svgURL:
                      'assets/images/onboard/page2/big_logo_4_onboard_page2.svg')),
          const Positioned(
              left: -20,
              bottom: 0,
              width: 220,
              height: 220,
              child:
                  SvgRender(svgURL: 'assets/images/onboard/page2/logo_1.svg')),
          Positioned(
            right: -2,
            top: initStrokeRectTop,
            width: strokeRectWidth,
            height: strokeRectHeight,
            child: CustomPaint(
              size: Size(strokeRectWidth, strokeRectHeight),
              painter: StrokeRectangle(strokeColor: Colors.white),
            ),
          ),
          Positioned(
              right: -2 + strokeWidthGap,
              top: initStrokeRectTop - strokeHeightGap,
              width: strokeRectWidth,
              height: strokeRectHeight,
              child: CustomPaint(
                size: Size(strokeRectWidth, strokeRectHeight),
                painter: StrokeRectangle(strokeColor: Colors.white),
              )),
          Positioned(
              right: -2 + strokeWidthGap * 2,
              top: initStrokeRectTop - strokeHeightGap * 2,
              width: strokeRectWidth,
              height: strokeRectHeight,
              child: CustomPaint(
                size: Size(strokeRectWidth, strokeRectHeight),
                painter: StrokeRectangle(strokeColor: Colors.white),
              )),
          Positioned(
              right: -4 + strokeWidthGap * 3,
              top: initStrokeRectTop - strokeHeightGap * 3,
              width: strokeRectWidth,
              height: strokeRectHeight,
              child: CustomPaint(
                size: Size(strokeRectWidth, strokeRectHeight),
                painter: StrokeRectangle(strokeColor: Colors.white),
              )),
          Positioned(
              right: -4 + strokeWidthGap * 4,
              top: initStrokeRectTop - strokeHeightGap * 4,
              width: strokeRectWidth,
              height: strokeRectHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: const FilledImage(
                    imageURL:
                        'assets/images/onboard/page2/staff_onboard_page2.jpg'),
              )),
          Positioned(
              right: -8,
              top: initStrokeRectTop -
                  strokeHeightGap * 4 +
                  strokeRectHeight -
                  96 -
                  8,
              width: strokeRectWidth - 16,
              height: 96,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: RichText(
                              text: TextSpan(
                                  text: CONSTANTS().easyString[0],
                                  style: Theme.of(context).textTheme.titleLarge,
                                  children: <TextSpan>[
                                TextSpan(
                                    text: CONSTANTS().easyString[1],
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium),
                                TextSpan(
                                    text: CONSTANTS().easyString[2],
                                    style:
                                        Theme.of(context).textTheme.titleLarge)
                              ])),
                        ),
                        const SizedBox(
                          width: 32.0,
                        ),
                        const LimitedBox(
                            maxWidth: 42,
                            child: SvgRender(
                                svgURL:
                                    'assets/images/onboard/page2/logo_3.svg'))
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}

class StrokeRectangle extends CustomPainter {
  StrokeRectangle({required this.strokeColor}) {
    _paint
      ..color = strokeColor
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
  }

  final Paint _paint = Paint();
  final Color strokeColor;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRRect(
        RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, size.width, size.height),
            const Radius.circular(8.0)),
        _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
