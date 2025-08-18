 import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:flutter/material.dart';

class scorCard_rightpostion extends StatelessWidget {
  const scorCard_rightpostion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Center(
          child: SizedBox(
            height: psizes.homeCircularindicator,
            width: psizes.homeCircularindicator,
            child: CircularProgressIndicator(
              value: 0.9,
              strokeWidth: 12,
              backgroundColor: Colors.black12,
              strokeCap: StrokeCap.round,
              color: pcolors.black,
            ),
          ),
        ),
        Center(
          child: Text(
            '90%',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: pcolors.black),
          ),
        )
      ],
    );
  }
}
