import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constant/widgets/back_row.dart';
import '../../../core/utils/constant/widgets/event_cards.dart';
import '../../../core/utils/constant/widgets/rows.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
      child: Column(
        children: [
          const RowBackAppBar(
            title: 'Search',
          ),
          const SizedBox(
            height: 10,
          ),
          SearchRow(
            iconColor: MainColors.appBarColor,
            textColor: Colors.white,
            backGroundColor: MainColors.bttonColor,
            iconbackgroundColor: Colors.white,
            searchiconColor: MainColors.appBarColor,
            hintColor: Colors.grey.withOpacity(0.4),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
                shrinkWrap: false,
                itemBuilder: (context, ind) => const AllEventsCard(),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}
