import 'package:flutter/material.dart';

class Maintext extends StatelessWidget {
  const Maintext({
    super.key,
    required this.text,
    required this.textStyle, this.textAlign,
  });

  final String text;
  final TextStyle textStyle;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign??TextAlign.center,
      style: textStyle,
    );
  }
}
