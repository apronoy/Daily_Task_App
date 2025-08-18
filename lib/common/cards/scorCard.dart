import 'package:dailytask/common/cards/scorCard_rightportion.dart';
import 'package:dailytask/common/cards/scroCard_leftPortion.dart';
import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/shadow/boxshadow.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
  import 'package:flutter/material.dart';

 
class scorCard extends StatelessWidget {
  const scorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: psizes.scorCardSize,
          decoration: BoxDecoration(
              color: pcolors.primaryColor,
              borderRadius: BorderRadius.circular(psizes.borderRadiusLg),
              boxShadow: pBoxshadow.scorCardShadow),
          padding: EdgeInsets.all(psizes.sm),
          child: Row(
            children: [
              Expanded(child: scorCard_leftPortion()),
              Expanded(child: scorCard_rightpostion())
            ],
          ),
        )
      ],
    );
  }
}
