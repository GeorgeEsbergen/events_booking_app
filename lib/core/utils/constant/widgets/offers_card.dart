import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../buttons.dart';

class CardOffer extends StatelessWidget {
  const CardOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff00F8FF).withOpacity(0.13),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
              right: -20,
              top: -5,
              child: Image.asset("assets/images/offer.png")),
          Positioned(
            left: 20,
            top: 15,
            bottom: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Invite Your Friends",
                  style: TextStyle(fontSize: 18),
                ),
                const Text(
                  "Get \$20 for ticket",
                  style: TextStyle(fontSize: 13),
                ),
                SmallButton(
                    text: "INVITE",
                    onPressedFun: () {
                      Share.share("asdas", );
                    },
                    backGroundColor: const Color(0xff00F8FF))
              ],
            ),
          )
        ],
      ),
    );
  }
}
