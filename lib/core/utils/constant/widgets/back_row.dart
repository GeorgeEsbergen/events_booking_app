import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:book_withmyself/features/home/Search/search.dart';
import 'package:flutter/material.dart';

import '../fonts.dart';

class RowBack extends StatelessWidget {
  const RowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30,
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          "Event Details",
          style: Font.font24,
        ),
        const Spacer(),
        Container(
            padding: const EdgeInsets.symmetric(vertical: 2),
            height: 36,
            width: 36,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.4)),
            child: const Icon(
              Icons.bookmark_rounded,
              color: Colors.white,
              size: 16,
            )),
      ],
    );
  }
}

class RowBackAppBar extends StatelessWidget {
  const RowBackAppBar({
    super.key,
    this.firstIcon,
    this.seconfIcon,
    this.title,
  });
  final IconData? firstIcon;
  final IconData? seconfIcon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 30,
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back,
              size: 24,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Text(
          title ?? "",
          style: Font.font24.copyWith(color: MainColors.blueDarkColor),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SearchScreen.routeName),
          child: Icon(
            firstIcon,
            size: 24,
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: Icon(
            seconfIcon,
            size: 24,
          ),
        )
      ],
    );
  }
}
