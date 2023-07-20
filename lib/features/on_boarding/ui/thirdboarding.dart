import 'package:flutter/material.dart';
import 'thirdboarding_body.dart';

class ThirdBoarding extends StatelessWidget {
  static String routeName = "ThirdBoard";
   const ThirdBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ThirdBoardingBody()
     
    );
  }
}