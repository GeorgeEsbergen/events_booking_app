import 'package:book_withmyself/features/home/envent_details/event_details_body.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatelessWidget {
  static String routeName = "EvenetDetails";
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EventDetailsBody(),
    );
  }
}
