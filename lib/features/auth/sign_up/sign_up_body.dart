import 'package:book_withmyself/core/utils/constant/buttons.dart';
import 'package:book_withmyself/core/utils/constant/fonts.dart';
import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:book_withmyself/features/auth/sign_in/sign_in.dart';
import 'package:book_withmyself/features/auth/sign_up/vreification/verification.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/constant/textform_field.dart';
import '../../../core/utils/constant/widgets/rows.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
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
              child: Maintext(text: "Sign up", textStyle: Font.Darkfont24),
            ),
            const SizedBox(height: 20),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MainTextFormFiled(
                    hint: "your Name",
                    label: "Full Name",
                    iconHidePass: null,
                    iconShowPass: null,
                    keyboard: TextInputType.text,
                    prefixicon: Icons.person_2_outlined,
                  ),
                  const SizedBox(height: 25),
                  MainTextFormFiled(
                    hint: "abc@gmail.com",
                    label: "Email",
                    iconHidePass: null,
                    iconShowPass: null,
                    keyboard: TextInputType.emailAddress,
                    prefixicon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 25),
                  MainTextFormFiled(
                    hint: "Your Password",
                    label: "password",
                    iconHidePass: Icons.visibility_off,
                    iconShowPass: Icons.visibility,
                    keyboard: TextInputType.text,
                    prefixicon: Icons.lock_outline,
                  ),
                  const SizedBox(height: 25),
                  MainTextFormFiled(
                    hint: "Confirm Password",
                    label: "Confirm password",
                    iconHidePass: Icons.visibility_off,
                    iconShowPass: Icons.visibility,
                    keyboard: TextInputType.text,
                    prefixicon: Icons.lock_outline,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            BlueButton(
              onPressedFun: () =>
                  Navigator.of(context).pushNamed(Verfication.routeName),
              text: "Sign up",
            ),
            const SizedBox(height: 25),
            Maintext(
              text: "OR",
              textStyle: Font.font15.copyWith(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 20),
            WhiteButton(
              image: "assets/images/search.png",
              onPressedFun: () {},
              text: "Login with Google",
            ),
            const SizedBox(height: 15),
            WhiteButton(
              image: "assets/images/ff.png",
              onPressedFun: () {},
              text: "Login with Facebook",
            ),
            const SizedBox(height: 15),
            RowForLoginOrSignUp(
              fun: () {
                Navigator.pushNamed(context, SignIn.routeName);
              },
              text1: "Already have account?",
              text2: "Signin",
            )
          ],
        ),
      ),
    );
  }
}
