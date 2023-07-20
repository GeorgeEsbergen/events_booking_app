import 'package:flutter/material.dart';

import 'all_events_body.dart';

class AllEvents extends StatelessWidget {
  const AllEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllEventsBody(),
    );
  }
}