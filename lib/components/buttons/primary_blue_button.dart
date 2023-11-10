import 'package:flutter/material.dart';

class PrimaryBlueButton extends StatelessWidget {
  const PrimaryBlueButton(
      {super.key,
      required this.text,
      required this.callback,
      this.horizontalPadding = 24.0});

  final double horizontalPadding;
  final VoidCallback callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: ElevatedButton(onPressed: callback, child: Text(text)),
    );
  }
}
