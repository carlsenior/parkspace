import 'package:flutter/material.dart';
import 'package:park_space/globals/utils/convert_px_to_dp.dart';
import 'package:park_space/screens/onboard/pages/Page2.dart';

import 'pages/page1.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _controller;

  int _active_page = 0;
  List<Widget> pages = [const Page1(), const Page2()];

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
              onPageChanged: (value) {
                setState(() {
                  _active_page = value;
                });
              },
              itemBuilder: (context, index) {
                return pages[index];
              }),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 100,
            child: Container(
              color: Colors.black54,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    pages.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                          onTap: () {
                            _controller.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: _active_page == index
                              ? const Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 12,
                                )
                              : const Icon(
                                  Icons.radio_button_unchecked,
                                  color: Colors.white,
                                  size: 12,
                                )),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

// class CirclePainter extends CustomPainter {
//   CirclePainter({required this.shouldFill}) {
//     _paint
//       ..color = Colors.white
//       ..style = shouldFill ? PaintingStyle.fill : PaintingStyle.stroke
//       ..strokeWidth = shouldFill ? 0 : 1;
//   }

//   bool shouldFill;
//   final Paint _paint = Paint();

//   @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawOval(Rect.fromLTWH(0, 0, size.width, size.height), _paint);
//   }

//   @override
//   bool shouldRepaint(covariant CirclePainter oldDelegate) {
//     return oldDelegate.shouldFill != shouldFill;
//   }
// }
