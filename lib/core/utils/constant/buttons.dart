import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:book_withmyself/core/utils/constant/fonts.dart';
import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final Function() onPressedFun;
  final String text;

  const BlueButton({Key? key, required this.text, required this.onPressedFun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: 58,
      width: size.width / 1.4,
      child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => MainColors.bttonColor,
            ),
          ),
          onPressed: onPressedFun,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      text,
                      style: Font.font15,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.1)),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            ),
          )),
    );
  }
}

// White Button For Using
class WhiteButton extends StatelessWidget {
  final Function() onPressedFun;
  final String text;
  final String? image;

  const WhiteButton(
      {Key? key, required this.text, required this.onPressedFun, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: 271,
      child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Colors.white,
            ),
          ),
          onPressed: onPressedFun,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image!,
                width: 26,
                height: 26,
              ),
              const SizedBox(width: 20),
              Text(
                text,
                style: Font.font15.copyWith(color: Colors.black),
              ),
            ],
          )),
    );
  }
}

class SmallButton extends StatelessWidget {
  final Function() onPressedFun;
  final String text;
  final Color backGroundColor;
  final Color? fontColor;

  const SmallButton(
      {Key? key,
      required this.text,
      required this.onPressedFun,
      required this.backGroundColor,
      this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 35,
        width: 75,
        child: TextButton(
          style: ButtonStyle(
            alignment: Alignment.center,
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => backGroundColor,
            ),
          ),
          onPressed: onPressedFun,
          child: Text(
            text,
            style: Font.font12.copyWith(color: fontColor ?? Colors.white),
          ),
        ));
  }
}

class FollowButton extends StatelessWidget {
  final Function() onPressedFun;
  final String text;
  final Color backGroundColor;
  final Color? fontColor;

  const FollowButton(
      {Key? key,
      required this.text,
      required this.onPressedFun,
      required this.backGroundColor,
      this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 28,
        width: 63,
        child: TextButton(
          style: ButtonStyle(
            alignment: Alignment.center,
            shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => backGroundColor,
            ),
          ),
          onPressed: onPressedFun,
          child: Text(
            text,
            style: Font.font12.copyWith(color: fontColor ?? Colors.white),
          ),
        ));
  }
}
