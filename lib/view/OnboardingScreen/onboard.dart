import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/view/OnboardingScreen/intro_page1.dart';
import 'package:new_app/view/OnboardingScreen/intro_page2.dart';
import 'package:new_app/view/OnboardingScreen/intro_page3.dart';
import 'package:new_app/pages/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onlastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
            onPageChanged: (index) {
              setState(() {
                onlastPage = (index == 2);
              });
            },
            controller: _controller,
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ]),
        Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text('Skip')),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                onlastPage
                    ? TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                          Get.to(() => const HomeScreen());
                        },
                        child: const Text('Done'))
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text('Next')),
              ],
            ))
      ]),
    );
  }
}
