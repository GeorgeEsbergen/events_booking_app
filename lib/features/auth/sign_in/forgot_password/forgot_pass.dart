import 'package:flutter/material.dart';

import 'forgot_pass_body.dart';

class ForgotPassword extends StatelessWidget {
  static String routeName = "FrogotPassword";
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordBody(),
    );
  }
}
