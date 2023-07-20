import 'package:book_withmyself/core/utils/constant/buttons.dart';
import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:book_withmyself/features/auth/sign_in/sign_in.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant/fonts.dart';
import '../../../../core/utils/constant/widgets/containers.dart';
import '../../../../core/utils/constant/widgets/texts.dart';

class VerficationBody extends StatelessWidget {
  const VerficationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Maintext(
                text: "Verification",
                textStyle: Font.Darkfont24,
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 215,
                height: 50,
                child: Maintext(
                  textAlign: TextAlign.start,
                  text: "We've send you the verification code on +1245432323",
                  textStyle: Font.Darkfont15,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VerificationCode(),
                  VerificationCode(),
                  VerificationCode(),
                  VerificationCode()
                ],
              ),
            ),
            const SizedBox(height: 40),
            BlueButton(
                text: "CONTINUE",
                onPressedFun: () {
                  Navigator.pushNamed(context, SignIn.routeName);
                }),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Maintext(
                    text: "Re-send Code on  ", textStyle: Font.Darkfont15),
                Maintext(
                    text: " 0:20",
                    textStyle:
                        Font.Darkfont15.copyWith(color: MainColors.blueColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
