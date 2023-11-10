import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

import 'filled_image.dart';

class BlurWidget extends StatelessWidget {
  const BlurWidget(
      {super.key, required this.blurColor, required this.imageURL});

  final Color blurColor;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Blur(
      blur: 2.5,
      blurColor: blurColor,
      // overlay: Column(
      //   children: [
      //     RichText(
      //         text: TextSpan(
      //             text: CONSTANTS().getSelectLanguageTitle[0],
      //             style: Theme.of(context).textTheme.headlineMedium)),
      //     RichText(
      //         text: TextSpan(
      //             text: CONSTANTS().getSelectLanguageTitle[1],
      //             style: Theme.of(context).textTheme.headlineSmall))
      //   ],
      // ),
      child: FilledImage(imageURL: imageURL),
    );
  }
}
