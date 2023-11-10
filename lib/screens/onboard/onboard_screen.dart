import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:park_space/screens/onboard/pages/Page2.dart';
import 'package:park_space/screens/onboard/pages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../globals/theme/theme_helper.dart';
import '../../globals/utils/image_constant.dart';
import 'pages/page1.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  List<Widget> pages = [const Page1(), const Page2(), const Page3()];
  int activeIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: activeIndex);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgOnboaringOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: pages.length,
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      activeIndex = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return pages[index];
                  },
                ),
                activeIndex != pages.length - 1
                    ? Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        height: 32.h,
                        child: Center(
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: pages.length,
                            effect: WormEffect(
                                strokeWidth: 1.sp,
                                dotWidth: 12.w,
                                dotHeight: 12.h,
                                spacing: 8.w,
                                paintStyle: PaintingStyle.stroke,
                                dotColor: Colors.white70,
                                activeDotColor: appTheme.whiteA700),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
          // child: Container(
          //   width: double.maxFinite,
          //   padding: EdgeInsets.symmetric(vertical: 32.v),
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       const Spacer(),
          //       SizedBox(
          //         height: 12.v,
          //         child: AnimatedSmoothIndicator(
          //           activeIndex: 0,
          //           count: 3,
          //           effect: ScrollingDotsEffect(
          //             spacing: 8,
          //             activeDotColor: appTheme.whiteA700,
          //             dotHeight: 12.v,
          //             dotWidth: 12.h,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
