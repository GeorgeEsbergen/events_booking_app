import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../fonts.dart';

class EventTimeListTile extends StatelessWidget {

  const EventTimeListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: MainColors.blueColor.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: MainColors.blueColor,
        ),
      ),
      title: Text(
        title,
        style: Font.Darkfont15.copyWith(color: MainColors.blueDarkColor),
      ),
      subtitle: Maintext(
        text: subtitle,
        textStyle: Font.font12.copyWith(
          color: Colors.grey,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
