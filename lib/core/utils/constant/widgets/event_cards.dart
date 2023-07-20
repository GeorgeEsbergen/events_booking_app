import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:book_withmyself/core/utils/constant/widgets/rows.dart';
import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:book_withmyself/features/home/envent_details/event_details.dart';
import 'package:flutter/material.dart';

import '../fonts.dart';
import 'containers.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(EventDetails.routeName);
      },
      child: Card(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 255,
          width: 237,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: 237,
                height: 131,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/cardimagepng.png",
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const DateCard(),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5)),
                        child: Icon(
                          Icons.bookmark_rounded,
                          color: MainColors.orangeColor,
                          size: 18,
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Text("International Band Museum",
                  style: Font.Darkfont18, overflow: TextOverflow.ellipsis),
              const SizedBox(height: 9),
              const RowOfRecentlyBooked(),
              const SizedBox(height: 9),
              const LocationRow()
            ],
          ),
        ),
      ),
    );
  }
}

class AllEventsCard extends StatelessWidget {
  const AllEventsCard({
    super.key, this.location,
  });
  final Widget? location;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:()=>Navigator.pushNamed(context,EventDetails.routeName) ,
      child: Card(
        elevation: 0.1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 106,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                height: 92,
                width: 79,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/cardimagepng.png"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                height: 86,
                width: 207,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Maintext(
                      text: "Wed, Apr 28.5:30 PM",
                      textStyle:
                          Font.font13.copyWith(color: MainColors.blueColor),
                    ),
                    Maintext(
                      text: "Jo Malone London Mother's Day Present",
                      textStyle:
                          Font.font15.copyWith(color: MainColors.blueDarkColor),
                      textAlign: TextAlign.start,
                    ),
                    location??const SizedBox(height: 1),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
