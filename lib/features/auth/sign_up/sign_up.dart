import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import 'sign_up_body.dart';

class SignUp extends StatelessWidget {
  static String routeName = "SignUp";
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.MianBackground,
      body: const SignUpBody(),
    );
  }
}
