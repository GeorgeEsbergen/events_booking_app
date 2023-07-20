import 'package:book_withmyself/core/utils/constant/widgets/texts.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class followNumbers extends StatelessWidget {
  const followNumbers({
    super.key,
    required this.followNumber,
    required this.title,
  });
  final int followNumber;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Maintext(text: "$followNumber", textStyle: const TextStyle(fontSize: 16)),
        const SizedBox(height: 5),
        Maintext(
            text: title,
            
            textStyle: const TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}


class RowOfFolllowing extends StatelessWidget {
  const RowOfFolllowing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 70.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          followNumbers(
            followNumber: 255,
            title: "Following",
          ),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              thickness: 1,
              color: Colors.grey,
              endIndent: 7,
              indent: 7,
            ),
          ),
          followNumbers(
            followNumber: 273,
            title: "Followers",
          ),
        ],
      ),
    );
  }
}

