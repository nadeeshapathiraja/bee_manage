// ignore_for_file: avoid_print

import 'package:beetracker/pages/autendication_pages/login_page/login_page.dart';
import 'package:beetracker/services/user_services.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../componets/custom_button.dart';
import '../../data/onboading_data.dart';
import '../../models/onboading_model.dart';
import '../../utils/colors.dart';
import 'widgets/onboarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnboardingScreenModel> onboardingData =
      OnbardingData.onboardingData;
  PageController pageController = PageController();
  bool showContinue = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Image.asset(
                    "assets/images/bg.jpg",

                    // width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
                PageView(
                  onPageChanged: (index) {
                    print(index);
                    setState(() {
                      showContinue = index == 2;
                    });
                    print(showContinue);
                  },
                  controller: pageController,
                  children: [
                    OBWidget(
                      dataModel: onboardingData[0],
                    ),
                    OBWidget(
                      dataModel: onboardingData[1],
                    ),
                    OBWidget(
                      dataModel: onboardingData[2],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    alignment: const Alignment(0, 0.75),
                    child: SmoothPageIndicator(
                      controller: pageController, // PageController
                      count: 3,
                      effect: const WormEffect(
                        activeDotColor: kMainColor,
                        dotColor: kLightGrey,
                      ), // your preferred effect
                      onDotClicked: (index) {},
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: showContinue
                        ? CustomButton(
                            onTap: () async {
                             await UserServices.storeBeforeUse();
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                                (route) => true,
                              );
                            },
                            text: "Get Started",
                          )
                        : CustomButton(
                            onTap: () {
                              print("showContinue");
                              print(showContinue);
                              pageController.animateToPage(
                                pageController.page!.toInt() + 1,
                                duration: const Duration(microseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            text: "Next",
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
