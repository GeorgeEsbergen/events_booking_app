import 'package:book_withmyself/core/utils/constant/buttons.dart';

import 'package:book_withmyself/core/utils/constant/fonts.dart';
import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:book_withmyself/features/auth/sign_in/forgot_password/forgot_pass.dart';
import 'package:book_withmyself/features/home/buttom_nav_bar/buttom_nav_bar.dart';

import 'package:flutter/material.dart';

import '../../../core/utils/constant/textform_field.dart';
import '../../../core/utils/constant/widgets/rows.dart';
import '../sign_up/sign_up.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Group.png",
            ),
            const SizedBox(height: 8),
            Maintext(
              text: "EventHub",
              textStyle: Font.Darkfont24.copyWith(fontSize: 35),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Maintext(text: "Sign In", textStyle: Font.Darkfont24),
            ),
            const SizedBox(height: 20),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MainTextFormFiled(
                    hint: "abc@gmail.com",
                    label: "Email",
                    iconHidePass: null,
                    iconShowPass: null,
                    keyboard: TextInputType.emailAddress,
                    prefixicon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 30),
                  MainTextFormFiled(
                    hint: "Your Password",
                    label: "password",
                    iconHidePass: Icons.visibility_off,
                    iconShowPass: Icons.visibility,
                    keyboard: TextInputType.text,
                    prefixicon: Icons.lock_outline,
                  ),
                ],
              ),
            ),
            const RowOfForgotPassword(),
            const SizedBox(height: 20),
            BlueButton(
              onPressedFun: ()=>Navigator.pushNamed(context, BottomNavBarScreen.routeName),
              text: "Sign In",
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
                Navigator.pushNamed(context, SignUp.routeName);
              },
              text1: "  Don't have account?",
              text2: "Sign up",
            )
          ],
        ),
      ),
    );
  }
}

// Row Of Forgot Password
class RowOfForgotPassword extends StatelessWidget {
  const RowOfForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Switch.adaptive(value: true, onChanged: (sad) {}),
            const Maintext(text: "Remember Me ", textStyle: Font.Darkfont15),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ForgotPassword.routeName);
          },
          child: const Maintext(
              text: "Forgot Password?", textStyle: Font.Darkfont15),
        )
      ],
    );
  }
}
