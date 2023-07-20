import 'package:book_withmyself/features/on_boarding/ui/secondboarding.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constant/widgets/on_boarding_conainer.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 50),
          width: double.infinity,
          height: size.height,
          child: Image.asset(
            "assets/images/onboarding/img.png",
            fit: BoxFit.cover,
            height: size.height / 1.5,
            width: size.width / 1.1,
          ),
        ),
        OnBoardingContainer(
          size: size,
          bigText: "Explore Upcoming and Nearby Events",
          smallText:
              "In Publishing and graphic Design , Lorem is a placeholder text commonly",
              fun: () => Navigator.of(context).pushNamed(SecondBoarding.routeName),
        )
      ],
    );
  }
}
