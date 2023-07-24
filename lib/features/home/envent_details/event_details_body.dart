// ignore_for_file: avoid_print

import 'package:book_withmyself/core/utils/constant/buttons.dart';
import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:book_withmyself/core/utils/constant/fonts.dart';
import 'package:book_withmyself/core/utils/constant/widgets/rows.dart';
import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:book_withmyself/features/home/profiles/organizer_profile/organizer_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils/constant/widgets/back_row.dart';
import '../../../core/utils/constant/widgets/list_tile.dart';
import 'details_cubit/evnet_details_cubit.dart';

class EventDetailsBody extends StatelessWidget {
  const EventDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                height: 240,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/eventdetails.png"),
                        fit: BoxFit.cover)),
                child: const RowBack(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 0, top: 40),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Maintext(
                        text: "International Band Music Concert",
                        textStyle: TextStyle(
                          color: MainColors.blueDarkColor,
                          fontSize: 33,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const EventTimeListTile(
                      icon: Icons.calendar_month_rounded,
                      subtitle: "Tuesday, 4:00PM - 9:00PM",
                      title: "14 December,2021",
                    ),
                    const EventTimeListTile(
                        title: "Gala Convention Center ",
                        subtitle: "36 London Street, UK",
                        icon: Icons.location_on_rounded),
                    ListTile(
                      onTap: () => Navigator.of(context)
                          .pushNamed(OrganizerProfile.routeName),
                      leading: Container(
                          alignment: Alignment.center,
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: MainColors.blueColor.withOpacity(0.1),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/progile.jpg"),
                                  fit: BoxFit.cover))),
                      title: Text(
                        "Ashfak Sayem",
                        style: Font.Darkfont15.copyWith(
                            color: MainColors.blueDarkColor),
                      ),
                      subtitle: Maintext(
                        text: "Organizer",
                        textStyle: Font.font12.copyWith(
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      trailing:
                          BlocBuilder<EvnetDetailsCubit, EvnetDetailsState>(
                        builder: (context, state) {
                          return FollowButton(
                            text: BlocProvider.of<EvnetDetailsCubit>(context)
                                        .isTrue ==
                                    false
                                ? "Follow"
                                : "Followed",
                            onPressedFun: () {
                              BlocProvider.of<EvnetDetailsCubit>(context).doIt(
                                  BlocProvider.of<EvnetDetailsCubit>(context)
                                      .isTrue);

                              print(BlocProvider.of<EvnetDetailsCubit>(context)
                                  .isTrue);
                            },
                            backGroundColor:
                                MainColors.blueColor.withOpacity(0.1),
                            fontColor: MainColors.blueColor,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
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
                    SizedBox(height: size.height / 8),
                    BlueButton(
                      onPressedFun: () {},
                      text: 'Buy Ticket \$120',
                    )
                  ],
                ),
              )
            ],
          ),
          const EventDetailsInvite()
        ],
      ),
    );
  }
}
