import 'package:book_withmyself/features/auth/sign_in/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  static String routeName = "SignIn";
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.97),
      body: const SignInBody(),
    );
  }
}
