import 'package:flutter/material.dart';

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
