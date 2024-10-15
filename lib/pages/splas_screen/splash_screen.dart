import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FadeIn(
              duration: const Duration(seconds: 2),
              child: Image.asset(
                "assets/images/logo.png",
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // const SizedBox(height: 20),
          // const Text(
          //   "Expnanz",
          //   style: TextStyle(
          //     fontWeight: FontWeight.w900,
          //     fontSize: 40,
          //     color: kMainColor,
          //   ),
          // )
        ],
      ),
    );
  }
}
