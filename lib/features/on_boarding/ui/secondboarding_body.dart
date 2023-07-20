import 'package:book_withmyself/features/on_boarding/ui/thirdboarding.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constant/widgets/on_boarding_conainer.dart';

class SecondBoardingBody extends StatelessWidget {
  const SecondBoardingBody({super.key});

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
            "assets/images/onboarding/secondboarding.png",
            fit: BoxFit.contain,
            height: size.height / 1.2,
            width: size.width / 1.1,
          ),
        ),
        OnBoardingContainer(
          size: size,
          bigText: "Web Have Modern Events Calender Features",
          smallText:
              "In Publishing and graphic Design , Lorem is a placeholder text commonly",
              fun: () => Navigator.of(context).pushNamed(ThirdBoarding.routeName),
        )
      ],
    );
  }
}
