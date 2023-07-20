import 'package:book_withmyself/features/home/home_page/home_page_body.dart';
import 'package:flutter/material.dart';

import 'drawer_menu.dart/menu.dart';

class HomePage extends StatefulWidget {
  static String routeName = "HomePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawermenu(),
      body: HomePageBody(),
    );
  }
}
