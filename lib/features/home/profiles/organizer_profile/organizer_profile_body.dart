import 'package:book_withmyself/features/home/envent_details/details_cubit/evnet_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constant/colors.dart';
import '../../../../core/utils/constant/fonts.dart';
import '../../../../core/utils/constant/widgets/back_row.dart';
import '../../../../core/utils/constant/widgets/column.dart';
import '../../../../core/utils/constant/widgets/profile_buttons.dart';
import '../../../../core/utils/constant/widgets/texts.dart';
import 'cons.dart';

class OrganizerProfileBody extends StatefulWidget {
  const OrganizerProfileBody({super.key});

  @override
  State<OrganizerProfileBody> createState() => _OrganizerProfileBodyState();
}

class _OrganizerProfileBodyState extends State<OrganizerProfileBody> {
  bool istre = true;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
            child: Column(
              children: [
                const RowBackAppBar(
                  seconfIcon: Icons.more_vert,
                ),
                const SizedBox(height: 20),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BlocBuilder<EvnetDetailsCubit, EvnetDetailsState>(
                      builder: (context, state) {
                        return BlueProfileButton(
                          fun: () {
                            BlocProvider.of<EvnetDetailsCubit>(context).doIt(
                                BlocProvider.of<EvnetDetailsCubit>(context)
                                    .isTrue);
                          },
                          icon:
                              BlocProvider.of<EvnetDetailsCubit>(context).isTrue
                                  ? Icons.person_add_disabled_outlined
                                  : Icons.person_add_alt,
                          text:
                              BlocProvider.of<EvnetDetailsCubit>(context).isTrue
                                  ? "Followed"
                                  : "Follow",
                        );
                      },
                    ),
                    WhiteProfileButton(
                      fun: () {},
                      icon: Icons.edit_document,
                      text: "Message",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TabBar(
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: MainColors.blueColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: MainColors.blueColor,
                      tabs: [
                        Text("ABOUT"),
                        Text("EVENT"),
                        Text("REVIEW"),
                      ]),
                ),
                const Expanded(
                    child: SizedBox(
                  width: double.infinity,
                  child: TabBarView(children: [
                    AboutOrganzier(),
                    OrganizerEvent(),
                    OrganizerReview()
                  ]),
                )),
              ],
            ),
          )),
    );
  }
}
