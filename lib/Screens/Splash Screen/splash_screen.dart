import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:shabu_shop/Const/images.dart';
import 'package:shabu_shop/Screens/Onboarding/onboarding_screen.dart';

import '../../Const/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => OnBoardingScreen().launch(context)
            // Navigator.push(context,
            // MaterialPageRoute(builder: (context) => OnboardingScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:bgColor,
      body: Center(
        child: Image.asset(
          imgLogo,
          width: 220,
        ),
      ),
    );
  }
}
