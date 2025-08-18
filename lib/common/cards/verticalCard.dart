import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:dailytask/utilities/dataModal/data_List.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:flutter/material.dart';

class verticalCart extends StatelessWidget {
  const verticalCart({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final task = Datalist.data[index];
    final dark = phelperfuction.isdark(context);

    return GestureDetector(
      onTap: () {
        print('clicked');
      },
      child: Container(
        width: double.infinity,
        height: psizes.verticalCartHeiget,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(psizes.borderRadiusMd),
          color: dark ? pcolors.darkgrey : pcolors.light,
        ),
        child: Padding(
          padding: const EdgeInsets.all(psizes.sm),
          child: Row(
            children: [
              SizedBox(
                width: 48,
                height: 48,
                child: Stack(
                  children: [
                    // indicator
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: task.color.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(1000)),
                      child: CircularProgressIndicator(
                        value: task.indicatorValue,
                        strokeCap: StrokeCap.round,
                        backgroundColor: pcolors.darkgrey.withOpacity(0.1),
                      ),
                    ),
                    // icon
                    Center(
                        child: Icon(
                      task.icon,
                      color: dark ? pcolors.light : pcolors.dark,
                    ))
                  ],
                ),
              ),
              SizedBox(width: psizes.md),

              // Task name and description
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    task.name,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: psizes.xs),
                  //Tesk description
                  Container(
                    child: Text(
                      task.description,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              // spacer for maximum moving
              Spacer(),

              // this time 1
              Text(
                task.title1,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: psizes.sm),
              // it's time 2
              Text(
                task.title2,
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),

            
            ],
          ),
        ),
      ),
    );
  }
}
