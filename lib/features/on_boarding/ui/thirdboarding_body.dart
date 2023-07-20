import 'package:flutter/material.dart';
import '../../../core/utils/constant/widgets/on_boarding_conainer.dart';
import '../../auth/sign_in/sign_in.dart';

class ThirdBoardingBody extends StatelessWidget {
  static String routeName = "ThirdBoard";
  const ThirdBoardingBody({super.key});

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
            "assets/images/onboarding/thirdboarding.png",
            fit: BoxFit.contain,
            height: size.height / 1.4,
            width: size.width / 1.2,
          ),
        ),
        OnBoardingContainer(
          size: size,
          bigText: "To Look Up More Events Activities Nearby By Map",
          smallText:
              "In Publishing and graphic Design , Lorem is a placeholder text commonly",
              fun: () => Navigator.of(context).pushNamed(SignIn.routeName),
        )
      ],
    );
  }
}
