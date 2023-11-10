import 'package:flutter/material.dart';

class FilledImage extends StatelessWidget {
  const FilledImage({Key? key, required this.imageURL}) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imageURL,
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
      alignment: Alignment.center,
    );
  }
}
