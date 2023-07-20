import 'package:flutter/material.dart';
import 'secondboarding_body.dart';

class SecondBoarding extends StatelessWidget {
  static String routeName = "SecondBoard";
   const SecondBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SecondBoardingBody()
     
    );
  }
}