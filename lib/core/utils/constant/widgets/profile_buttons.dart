import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class WhiteProfileButton extends StatelessWidget {
  const WhiteProfileButton({
    super.key,
    required this.text,
    required this.icon,
    required this.fun,
  });

  final String text;
  final IconData icon;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 154,
      child: TextButton(
          style: ButtonStyle(
              foregroundColor:
                  const MaterialStatePropertyAll(MainColors.blueColor),
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: MainColors.blueColor)))),
          onPressed: fun,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              const SizedBox(width: 10),
              Maintext(text: text, textStyle: const TextStyle(fontSize: 16))
            ],
          )),
    );
  }
}

class BlueProfileButton extends StatelessWidget {
  const BlueProfileButton({
    super.key,
    required this.text,
    required this.icon,
    required this.fun,
  });

  final String text;
  final IconData icon;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 154,
      child: TextButton(
          style: ButtonStyle(
              foregroundColor: const MaterialStatePropertyAll(Colors.white),
              backgroundColor:
                  const MaterialStatePropertyAll(MainColors.blueColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.white)))),
          onPressed: fun,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              const SizedBox(width: 10),
              Maintext(text: text, textStyle: const TextStyle(fontSize: 16))
            ],
          )),
    );
  }
}
