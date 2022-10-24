import '../constants/myconstants.dart';
import '../introscreens/intropage1.dart';
import '../introscreens/intropage2.dart';
import '../introscreens/intropage3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDesign extends StatefulWidget {
  const PageViewDesign({super.key});

  @override
  State<PageViewDesign> createState() => _PageViewDesignState();
}

class _PageViewDesignState extends State<PageViewDesign> {
  final PageController _controller = PageController();
  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const BouncingScrollPhysics(),
            controller: _controller,
            children: const <Widget>[IntroPage1(), IntroPage2(), IntroPage3()],
          ),
          Container(
              alignment: const Alignment(0, 0.65),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect: ExpandingDotsEffect(activeDotColor: MyConstants.instance.bitterSweet, dotColor: MyConstants.instance.bitterSweet)),
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
