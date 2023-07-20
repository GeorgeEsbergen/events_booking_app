import 'package:flutter/material.dart';

import '../../../../core/utils/constant/buttons.dart';
import '../../../../core/utils/constant/fonts.dart';
import '../../../../core/utils/constant/textform_field.dart';
import '../../../../core/utils/constant/widgets/texts.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({super.key});

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
                text: "Reset Password",
                textStyle: Font.Darkfont24,
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 12),
            const Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 244,
                height: 50,
                child: Maintext(
                  textAlign: TextAlign.start,
                  text:
                      "Please enter your email address to request a password reset",
                  textStyle: Font.Darkfont15,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Form(
                child: MainTextFormFiled(
              hint: "abc@gmail.com",
              label: "Email",
              iconHidePass: null,
              iconShowPass: null,
              keyboard: TextInputType.emailAddress,
              prefixicon: Icons.email_outlined,
            )),
            const SizedBox(height: 30),
            BlueButton(text: "Send", onPressedFun: () {}),
          ],
        ),
      ),
    );
  }
}
