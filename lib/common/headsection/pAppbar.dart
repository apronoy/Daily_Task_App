import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:flutter/material.dart';

class pAppbar extends StatelessWidget implements PreferredSizeWidget {
  const pAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = phelperfuction.isdark(context);
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(psizes.sm),
        child: Text('Analytics',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: dark ? pcolors.light : pcolors.darkgrey)),
      ),
      backgroundColor: dark ? pcolors.darkgrey : pcolors.light,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
