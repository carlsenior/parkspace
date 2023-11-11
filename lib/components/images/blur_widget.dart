import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:park_space/widgets/custom_image_view.dart';

class BlurWidget extends StatelessWidget {
  const BlurWidget(
      {super.key,
      required this.blurColor,
      required this.imageURL,
      required this.blur,
      this.height,
      this.width,
      this.alignment,
      this.onTap,
      this.margin});

  final double blur;
  final Color blurColor;
  final String imageURL;
  final double? height;
  final double? width;
  final Alignment? alignment;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildWidget(),
          )
        : _buildWidget();
  }

  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: Blur(
            blur: blur,
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
            child: CustomImageView(
              imagePath: imageURL,
              width: width,
              height: height,
            )),
      ),
    );
  }
}
