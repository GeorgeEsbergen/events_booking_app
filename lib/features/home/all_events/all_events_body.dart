import 'package:flutter/material.dart';
import '../../../core/utils/constant/widgets/back_row.dart';
import '../../../core/utils/constant/widgets/event_cards.dart';
import '../../../core/utils/constant/widgets/rows.dart';

class AllEventsBody extends StatelessWidget {
  const AllEventsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 40),
        child: RowBackAppBar(
          seconfIcon: Icons.more_vert_outlined,
          title: 'Events',
          firstIcon: Icons.search,
        ),
      ),
      const SizedBox(height: 10),
      Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, ind) => const AllEventsCard(
                  location: LocationRow(),
                ),
            itemCount: 10),
      ),
    ]);
  }
}
