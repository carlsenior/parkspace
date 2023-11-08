import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  int _currentImgIndex = 0;
  final onBoardScreenImages = [
    "assets/images/onboard/Onboaring.png",
    "assets/images/onboard/Onboaring-1.png",
  ];

  void nextImage() {
    if (_currentImgIndex < onBoardScreenImages.length - 1) {
      setState(() {
        _currentImgIndex += 1;
      });
    }
  }

  void prevImage() {
    if (_currentImgIndex > 0) {
      setState(() {
        _currentImgIndex -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 800),
                switchInCurve: Curves.easeInOut,
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
                child: Image.asset(
                  onBoardScreenImages[_currentImgIndex],
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: double.infinity,
                  key: ValueKey<int>(_currentImgIndex),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: Colors.black26,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: prevImage,
                        icon: _currentImgIndex == 0
                            ? const Icon(null)
                            : const Icon(Icons.arrow_back)),
                    TextButton(
                        onPressed: () => {},
                        child: Text(
                          'Skip',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  fontFamilyFallback: <String>[
                                'Noto Sans CJK SC',
                                'Noto Color Emoji',
                              ]),
                        )),
                    IconButton(
                        onPressed:
                            _currentImgIndex == onBoardScreenImages.length - 1
                                ? () => {}
                                : nextImage,
                        icon: _currentImgIndex == onBoardScreenImages.length - 1
                            ? const Icon(Icons.done)
                            : const Icon(Icons.arrow_forward))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
