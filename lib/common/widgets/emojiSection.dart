   import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:dailytask/utilities/constants/shadow/boxshadow.dart';
import 'package:flutter/material.dart';

class emojisection extends StatelessWidget {
  const emojisection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isdark(context);
    return SizedBox(
      height: 61.0,
      child: ListView.separated(
        separatorBuilder: (context, index) =>
            SizedBox(width: psizes.spacebtwitems),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          List<String> emojis = ['😊', '😂', '🥰', '😐', '😥', '😎', '☠'];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Container(
                height: psizes.emojiicardSize,
                width: psizes.emojiicardSize,
                decoration: BoxDecoration(
                  color: dark ? pcolors.darkgrey : pcolors.light,
                  borderRadius: BorderRadius.circular(psizes.borderRadiusMd),
                  boxShadow: pBoxshadow.scorCardShadow,
                ),
                child: Center(
                    child:
                        Text(emojis[index], style: TextStyle(fontSize: 30)))),
          );
        },
      ),
    );
  }
}
