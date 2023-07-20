// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:book_withmyself/core/utils/constant/widgets/rows.dart';
import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../textform_field.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 55,
        width: 55,
        child: SmallTextFormFiled(
          hint: '---',
          keyboard: TextInputType.phone,
        ));
  }
}

class AppbarContainer extends StatelessWidget {
  const AppbarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
      decoration: const BoxDecoration(
          color: MainColors.appBarColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(33, 33),
              bottomRight: Radius.elliptical(33, 33))),
      height: 180,
      width: double.infinity,
      child: const Column(
        children: [MenuAndLocations(), SizedBox(height: 10), SearchRow()],
      ),
    );
  }
}

class FilterData extends StatelessWidget {
  const FilterData({
    super.key,
    required this.iconColor,
    required this.backgroundColor,
    required this.iconSize,
    required this.icon,
    required this.text,
    required this.textStyle,
    this.iconbackgroundColor,
  });

  final Color iconColor;
  final double iconSize;
  final IconData icon;
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;
  final Color? iconbackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 75,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: iconbackgroundColor ?? Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15)),
            child: Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
          ),
          const SizedBox(width: 3),
          Maintext(text: text, textStyle: textStyle)
        ],
      ),
    );
  }
}

class FilterContainer extends StatelessWidget {
  const FilterContainer({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.text,
    required this.textStyle,
  });

  final String icon;
  final Color backgroundColor;
  final String text;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 100,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(25)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 17.7,
            height: 17.7,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 5),
          Maintext(text: text, textStyle: textStyle)
        ],
      ),
    );
  }
}

class Recentlybooked extends StatelessWidget {
  const Recentlybooked({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: const CircleAvatar(
        backgroundImage: AssetImage(
          "assets/images/progile.jpg",
        
        ),
      ),
    );
  }
}

class DateCard extends StatelessWidget {
  const DateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.5)),
      child: Column(children: [
        Text(
          "10",
          style: TextStyle(
              color: MainColors.orangeColor,
              fontSize: 17,
              fontWeight: FontWeight.w900),
        ),
        Text(
          "June",
          style: TextStyle(color: MainColors.orangeColor, fontSize: 11),
        ),
      ]),
    );
  }
}
