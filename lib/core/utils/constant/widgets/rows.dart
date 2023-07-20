import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:flutter/material.dart';
import '../buttons.dart';
import '../colors.dart';
import '../fonts.dart';
import '../textform_field.dart';
import 'containers.dart';

class RowForLoginOrSignUp extends StatelessWidget {
  const RowForLoginOrSignUp({
    super.key,
    required this.text1,
    required this.text2,
    required this.fun,
  });

  final String text1;
  final String text2;
  final Function() fun;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Maintext(
          text: text1,
          textStyle: Font.font15.copyWith(color: Colors.black),
        ),
        TextButton(
          onPressed: fun,
          child: Maintext(
            text: text2,
            textStyle: Font.font15.copyWith(color: MainColors.blueColor),
          ),
        )
      ],
    );
  }
}

// App Bar In Home Page

class MenuAndLocations extends StatelessWidget {
  const MenuAndLocations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Image.asset(
          "assets/icons/menus.png",
          height: 30,
          width: 30,
        ),
      ),
      const CurrentLocation(),
      Container(
          alignment: Alignment.center,
          height: 36,
          width: 36,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(20)),
          child: const Icon(
            Icons.notifications_none,
            color: Colors.white,
          ))
    ]);
  }
}

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Maintext(text: "Current Location", textStyle: Font.font12),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            )
          ],
        ),
        const Maintext(text: "New Yourk,USA", textStyle: Font.font13),
      ],
    );
  }
}

class SearchRow extends StatelessWidget {
  const SearchRow({
    super.key,
    this.iconColor,
    this.textColor,
    this.backGroundColor,
    this.iconbackgroundColor,
    this.searchiconColor,
    this.hintColor,
  });
  final Color? iconColor;
  final Color? textColor;
  final Color? backGroundColor;
  final Color? iconbackgroundColor;
  final Color? hintColor;
  final Color? searchiconColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
            width: 250,
            height: 50,
            child: SearchTextFormFiled(
              hintColor: hintColor,
              searchIconColor: searchiconColor,
              keyboard: TextInputType.text,
              hint: "| Search",
            )),
        FilterData(
          iconbackgroundColor: iconbackgroundColor,
          iconColor: iconColor ?? MainColors.appBarColor,
          backgroundColor: backGroundColor ?? Colors.white.withOpacity(0.1),
          iconSize: 15,
          icon: Icons.filter_list_rounded,
          text: ' Filters',
          textStyle: Font.font12.copyWith(color: textColor ?? textColor),
        )
      ],
    );
  }
}

class RowOfFilters extends StatelessWidget {
  const RowOfFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 160,
      child: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(children: [
          FilterContainer(
              backgroundColor: Color(0xffF0635A),
              icon: "assets/icons/whitebasketball.png",
              text: "Sports",
              textStyle: Font.font15),
          SizedBox(width: 20),
          FilterContainer(
              backgroundColor: Color(0xffF59762),
              icon: "assets/icons/whitemusic.png",
              text: "Music",
              textStyle: Font.font15),
          SizedBox(width: 20),
          FilterContainer(
              backgroundColor: Color(0xff29D697),
              icon: "assets/icons/whitefood.png",
              text: "Food",
              textStyle: Font.font15),
          SizedBox(width: 20),
        ]),
      ),
    );
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Maintext(text: text, textStyle: Font.Darkfont15),
        const Row(
          children: [
            Maintext(
              text: "See All",
              textStyle: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Icon(
              Icons.arrow_right_rounded,
              size: 25,
              color: Colors.grey,
            )
          ],
        ),
      ],
    );
  }
}

class RowOfRecentlyBooked extends StatelessWidget {
  const RowOfRecentlyBooked({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 56,
          child: Stack(children: [
            Positioned(
              left: 30,
              child: Recentlybooked(),
            ),
            Positioned(
              left: 15,
              child: Recentlybooked(),
            ),
            Recentlybooked(),
          ]),
        ),
        const SizedBox(width: 3),
        Text(
          "+20 Going",
          style: Font.font12.copyWith(color: MainColors.bttonColor),
        )
      ],
    );
  }
}

class EventDetailsInvite extends StatelessWidget {
  const EventDetailsInvite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height / 3.7,
      left: size.width / 10,
      right: size.width / 10,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Container(
          height: 55,
          width: 295,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const RowOfRecentlyBooked(),
              const Spacer(),
              FollowButton(
                backGroundColor: MainColors.blueColor,
                onPressedFun: () {},
                text: "Invite",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LocationRow extends StatelessWidget {
  const LocationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.location_on_rounded, size: 16, color: Colors.grey),
        Text(
          "36 Guild Street London, UK",
          style: Font.font13.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
