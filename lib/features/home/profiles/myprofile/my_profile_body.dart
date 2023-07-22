import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:book_withmyself/core/utils/constant/fonts.dart';
import 'package:book_withmyself/core/utils/constant/widgets/back_row.dart';
import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant/widgets/column.dart';
import '../../../../core/utils/constant/widgets/profile_buttons.dart';

class MyProfileBody extends StatelessWidget {
  const MyProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
            child: Column(
              children: [
                const RowBackAppBar(
                  title: "profile",
                ),
                const SizedBox(height: 40),
                const CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage("assets/images/progile.jpg"),
                ),
                const SizedBox(height: 20),
                Maintext(
                  text: "Ashfak Sayem",
                  textStyle: Font.Darkfont24.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 15),
                const RowOfFolllowing(),
                const SizedBox(height: 20),
                WhiteProfileButton(
                  fun: () {},
                  icon: Icons.edit_document,
                  text: 'Edit profile',
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Maintext(
                      text: "About Event",
                      textStyle: Font.Darkfont18.copyWith(
                          color: MainColors.blueDarkColor),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Maintext(
                      text:
                          "Enjoy your favorite dishe and a lovely your friends and Your family and have a great time . Food from local food trucks,Enjoy your favorite dishe and a lovely your friends and Your family and have a great time . Food from local food trucks",
                      textStyle: Font.font15.copyWith(color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
