import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/images/images.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:flutter/material.dart';

class profileHeaderSection extends StatelessWidget {
  const profileHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(height: 210),
        ClipPath(
          clipper: pcustopclipper(),
          child: Container(
            height: 160,
            color: pcolors.primaryColor,
            // child: Center(
            //     child: Image.asset(
            //   '',
            //   fit: BoxFit.cover,
            // )),
          ),
        ),
        Positioned(
          top: 110,
          left: psizes.md,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1000),
                boxShadow: [
                  BoxShadow(
                      color: phelperfuction.isdark(context)
                          ? pcolors.light.withOpacity(0.1)
                          : pcolors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ]),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(pimages.profile),
            ),
          ),
        ),
      ],
    );
  }
}

class pcustopclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 50);

    Offset firstC1 = Offset(50, size.height);
    Offset firstC2 = Offset(size.width / 2, size.height);

    Offset secondC1 = Offset(size.width - 50, size.height);
    Offset secondC2 = Offset(size.width, size.height - 50);

    path.quadraticBezierTo(firstC1.dx, firstC1.dy, firstC2.dx, firstC2.dy);
    path.quadraticBezierTo(secondC1.dx, secondC1.dy, secondC2.dx, secondC2.dy);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
