import 'package:book_withmyself/core/utils/constant/colors.dart';
import 'package:book_withmyself/features/home/all_events/all_events.dart';
import 'package:book_withmyself/features/home/home_page/home_page.dart';
import 'package:book_withmyself/features/home/map/map.dart';
import 'package:book_withmyself/features/home/profiles/myprofile/my_profile.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class BottomNavBarScreen extends StatefulWidget {
  static const routeName = 'navBarScreen';

  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _bottomNavBarScreenState createState() => _bottomNavBarScreenState();
}

// ignore: camel_case_types
class _bottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List pages = <Widget>[
    const HomePage(),
    const AllEvents(),
    const MapScreen(),
    const MyPorfile()
  ];

  int selectedItem = 0;

  void selectedPage(int val) {
    setState(() {
      selectedItem = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItem],
      floatingActionButton: FloatingActionButton(
        backgroundColor: MainColors.blueColor,
        onPressed: () {},
        child: const Icon(
          Icons.add_box,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedPage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: MainColors.blueColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedItem,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note_rounded),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
