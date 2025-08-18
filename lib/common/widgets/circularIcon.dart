 import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:flutter/material.dart';

class actionbutton extends StatelessWidget {
  const actionbutton({
    super.key,
    required this.icon,
    required this.ontap,
  });
  final Icon icon;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    final bool dark = phelperfuction.isdark(context);
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: dark ? pcolors.light : pcolors.darkgrey),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        icon: icon,
        onPressed: ontap,
      ),
    );
  }
}
