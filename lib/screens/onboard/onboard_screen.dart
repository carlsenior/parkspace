import 'package:flutter/material.dart';
import 'package:park_space/globals/utils/helper.dart';
import 'package:park_space/screens/onboard/pages/Page2.dart';
import 'package:park_space/screens/onboard/pages/page3.dart';

import 'pages/page1.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _controller;

  int _activeIndex = 0;
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
              onPageChanged: (value) {
                setState(() {
                  _activeIndex = value;
                });
              },
              itemBuilder: (context, index) {
                return pages[index];
              }),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            height: 32,
            child: Container(
              color: Colors.transparent,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                    pages.length,
                    (index) => InkWell(
                        onTap: () {
                          _controller.animateToPage(index,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.bounceInOut);
                        },
                        child: _activeIndex == index
                            ? const SizedBox(
                                width: 16,
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              )
                            : const SizedBox(
                                width: 16,
                                child: Icon(
                                  Icons.radio_button_unchecked,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              )),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
