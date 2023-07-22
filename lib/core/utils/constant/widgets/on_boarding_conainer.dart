import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:book_withmyself/features/auth/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../fonts.dart';

class OnBoardingContainer extends StatelessWidget {
  const OnBoardingContainer({
    super.key,
    required this.size,
    required this.bigText,
    required this.smallText,
    required this.fun,
  });

  final Size size;

  final String bigText;
  final String smallText;
  final Function() fun;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
        alignment: Alignment.bottomCenter,
        width: size.width,
        height: size.height / 2.7,
        decoration: const BoxDecoration(
            color: MainColors.blueColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(50, 50),
                topRight: Radius.elliptical(50, 50))),
        child: Column(children: [
          Maintext(text: bigText, textStyle: Font.font22),
          const SizedBox(height: 15),
          Maintext(
            text: smallText,
            textStyle: Font.font15.copyWith(
              color: Colors.white.withOpacity(0.8),
            ),
          ),
          SizedBox(height: size.height / 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () =>
                    Navigator.of(context).pushNamed(SignIn.routeName),
                child: Maintext(
                  text: "Skip",
                  textStyle: Font.font18.copyWith(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ),
              const Row(
                children: [
                  ThreeDots(),
                  SizedBox(width: 6),
                  ThreeDots(),
                  SizedBox(width: 6),
                  ThreeDots(),
                ],
              ),
              TextButton(
                onPressed: fun,
                child: const Maintext(
                  text: "Next",
                  textStyle: Font.font18,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

//This Code For the Three Dots
class ThreeDots extends StatelessWidget {
  const ThreeDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
    );
  }
}
