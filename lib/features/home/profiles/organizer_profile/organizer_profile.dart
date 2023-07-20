import 'package:book_withmyself/features/home/profiles/organizer_profile/organizer_profile_body.dart';
import 'package:flutter/material.dart';

class OrganizerProfile extends StatelessWidget {
  static String routeName = "OrganizerProfile";
  const OrganizerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrganizerProfileBody(),
    );
  }
}
