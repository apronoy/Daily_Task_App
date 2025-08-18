 import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:flutter/material.dart';

class scorCard_leftPortion extends StatelessWidget {
  const scorCard_leftPortion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
    Text(
      ' Daily Score ',
      style: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: pcolors.black),
    ),
    Row(
      children: [
        Text(
          '3/7 ',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: pcolors.black),
        ),
        Text(
          'Tasks completed',
          style: TextStyle(fontSize: 15, color: pcolors.black),
        ),
      ],
    )
          ],
        );
  }
}
