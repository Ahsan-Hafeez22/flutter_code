import 'package:event_booking_app/components/customized_buttons.dart';
import 'package:event_booking_app/screens/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:event_booking_app/components/page_built.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();
  bool onLastPage = false;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        onLastPage = controller.page == 2;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              buildPage(context, "assets/images/onboarding.png",
                  "Explore Upcoming and Nearby Events"),
              buildPage(context, "assets/images/onboarding2.png",
                  "We Have Modern Events Calendar Feature"),
              buildPage(context, "assets/images/onboarding3.png",
                  "Look Up More Events or Activities Nearby By Map"),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildTextButton(context, 'Skip', () {
                    controller.jumpToPage(2);
                  }),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.white,
                      dotWidth: 10,
                      dotHeight: 10,
                      dotColor: Colors.grey,
                    ),
                  ),
                  buildTextButton(context, onLastPage ? 'Done' : 'Next', () {
                    if (onLastPage) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavigation(),
                        ),
                      );
                    } else {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                    }
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
