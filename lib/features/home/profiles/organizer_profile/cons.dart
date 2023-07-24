import 'package:flutter/material.dart';

import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/fonts.dart';
import '../../../../core/utils/constant/widgets/event_cards.dart';
import '../../../../core/utils/constant/widgets/profile_buttons.dart';
import '../../../../core/utils/constant/widgets/texts.dart';

class AboutOrganzier extends StatelessWidget {
  const AboutOrganzier({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, top: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Maintext(
              text: "About Event",
              textStyle:
                  Font.Darkfont18.copyWith(color: MainColors.blueDarkColor),
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
    );
  }
}

class RoOfBuutons extends StatelessWidget {
  const RoOfBuutons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BlueProfileButton(
          fun: () {},
          icon: Icons.person_add_alt,
          text: "Follow",
        ),
        WhiteProfileButton(
          fun: () {},
          icon: Icons.edit_document,
          text: "Message",
        ),
      ],
    );
  }
}

class OrganizerEvent extends StatelessWidget {
  const OrganizerEvent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: false,
        itemBuilder: (context, ind) => const AllEventsCard(),
        itemCount: 10);
  }
}

class StarsRow extends StatelessWidget {
  const StarsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        Icons.star,
        color: MainColors.starColor,
      ),
      Icon(
        Icons.star,
        color: MainColors.starColor,
      ),
      Icon(
        Icons.star,
        color: MainColors.starColor,
      ),
      Icon(
        Icons.star,
        color: MainColors.starColor,
      ),
    ]);
  }
}

class OrganizerReview extends StatelessWidget {
  const OrganizerReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        shrinkWrap: false,
        itemBuilder: (context, ind) => const RatingAndReview(),
        itemCount: 10);
  }
}

class RatingAndReview extends StatelessWidget {
  const RatingAndReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/progile.jpg"),
            radius: 34,
          ),
          trailing: Maintext(
            text: "10 Feb",
            textStyle: Font.Darkfont15.copyWith(color: Colors.grey),
          ),
          title: const Maintext(
            text: "Rocks Zolly",
            textStyle: Font.Darkfont18,
            textAlign: TextAlign.start,
          ),
          subtitle: const StarsRow(),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 90.0, right: 15),
          child: Maintext(
            text:
                "Cenimas are the Ultimate experience to see new Movies in Gold glass VMax , Find a cenima near you",
            textStyle: Font.Darkfont15,
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
}
