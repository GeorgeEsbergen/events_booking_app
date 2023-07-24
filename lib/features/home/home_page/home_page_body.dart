import 'package:flutter/material.dart';

import '../../../core/utils/constant/widgets/event_cards.dart';
import '../../../core/utils/constant/widgets/containers.dart';
import '../../../core/utils/constant/widgets/offers_card.dart';
import '../../../core/utils/constant/widgets/rows.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});
  

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const AppbarContainer(),
                  const SizedBox(height: 30),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SeeAll(
                            text: "Upcoming Events",
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                              width: double.infinity,
                              height: 259,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, ind) =>
                                    const EventsCard(),
                                separatorBuilder: (context, ind) =>
                                    const SizedBox(width: 5),
                                itemCount: 5,
                              )),
                          const SizedBox(height: 20),
                          const CardOffer(),
                          const SizedBox(height: 25),
                          const SeeAll(text: "Nearby You")
                        ],
                      )),
                ],
              ),
              const RowOfFilters(),
            ],
          ),
        ));
  }
}
