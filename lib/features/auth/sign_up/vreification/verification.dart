import 'package:flutter/material.dart';
import 'verification_body.dart';

class Verfication extends StatelessWidget {
  static String routeName = "verification";
  const Verfication({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerficationBody(),
    );
  }
}
