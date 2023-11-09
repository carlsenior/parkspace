import 'package:flutter/material.dart';
import 'package:park_space/components/filled_image.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FilledImage(
          imageURL: 'assets/images/onboard/page1/image_29_onboard.jpg'),
    );
  }
}
