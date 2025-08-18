 import 'package:dailytask/common/widgets/circularIcon.dart';
import 'package:dailytask/utilities/constants/images/images.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          // users photo
          CircleAvatar(
            backgroundImage: AssetImage(pimages.profile),
            minRadius: 20,
            maxRadius: 28,
          ),
          SizedBox(width: psizes.spacebtwitems),
          // user details
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Morning', style: TextStyle(fontSize: 12)),
              Text('Pronoy Sarkar',
                  style: TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w700)),
            ],
          ),
        ],
      ),
    
      //action button
      actions: [
        actionbutton(icon: Icon(Iconsax.notification), ontap: () {}),
        SizedBox(
          width: psizes.sm,
        ),
        actionbutton(icon: Icon(Iconsax.calendar_edit), ontap: () {}),
        SizedBox(
          width: psizes.screenPadding,
        ),
      ],
    );
  }
}
