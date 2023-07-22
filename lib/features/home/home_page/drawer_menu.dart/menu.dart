import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:flutter/material.dart';

class Drawermenu extends StatelessWidget {
  const Drawermenu({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width / 1.5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/progile.jpg"),
            ),
            const SizedBox(height: 10),
            const Maintext(
                text: "Ashfak Sayem", textStyle: TextStyle(fontSize: 19)),
            const SizedBox(height: 10),
            RowOfMenuProfile(
              icon: Icons.person_outline_outlined,
              text: "My Profile",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.chat_bubble_outline_outlined,
              text: "Messaages",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.calendar_today_rounded,
              text: "Calender",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.bookmark_border,
              text: " Bookmark",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.email_outlined,
              text: "Contact us",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.settings_outlined,
              text: "Setting",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.question_mark_rounded,
              text: "Help&FAQs",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.exit_to_app_outlined,
              text: "Sign Out",
              fun: () {},
            )
          ]),
        ),
      ),
    );
  }
}

class RowOfMenuProfile extends StatelessWidget {
  const RowOfMenuProfile({
    super.key,
    required this.icon,
    required this.text,
    required this.fun,
  });
  final IconData icon;
  final String text;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: InkWell(
        onTap: fun,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 23,
              color: Colors.grey,
            ),
            const SizedBox(width: 10),
            Maintext(text: text, textStyle: const TextStyle(fontSize: 16))
          ],
        ),
      ),
    );
  }
}
