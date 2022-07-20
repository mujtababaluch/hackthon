import 'package:flutter/material.dart';
import 'package:hackthon/Constraint.dart';
import 'package:hackthon/Views/onboard/page1.dart';
import 'package:hackthon/Views/onboard/page2.dart';
import 'package:hackthon/Views/onboard/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int currentIndex = 0;
  PageController Controller = PageController(initialPage: 0);
   @override
  void initState() {
    Controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: Controller,
        children: [
          PageOne(),
          PageTwo(),
          PageThree(),
        ],
      ),
      bottomSheet: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 80, left: 150),
            color: Colors.transparent,
            child: SmoothPageIndicator(
              controller: Controller,
              count: 3,
              axisDirection: Axis.horizontal, 
              effect: ExpandingDotsEffect(
                activeDotColor: bg,
                dotColor: Colors.white,
                dotWidth: 10,
                dotHeight: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
