import 'package:flutter/material.dart';
import 'package:park_space/screens/onboard/pages/Page2.dart';
import 'package:park_space/screens/onboard/pages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pages/page1.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen>
    with TickerProviderStateMixin {
  late PageController _controller;

  List<Widget> pages = [const Page1(), const Page2(), const Page3()];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              itemCount: pages.length,
              controller: _controller,
              itemBuilder: (context, index) {
                return pages[index];
              }),
          Positioned(
              left: 0,
              bottom: 0,
              right: 0,
              height: 64,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: pages.length,
                    effect: const WormEffect(
                        strokeWidth: 1,
                        dotWidth: 12,
                        dotHeight: 12,
                        spacing: 8,
                        paintStyle: PaintingStyle.stroke,
                        dotColor: Colors.white70,
                        activeDotColor: Colors.white),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
