import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:dailytask/utilities/dataModal/data_List.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:dailytask/utilities/constants/shadow/boxshadow.dart';
import 'package:flutter/material.dart';

class Taskcard extends StatelessWidget {
  const Taskcard({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    bool dark = phelperfuction.isdark(context);
    final task = Datalist.data[index];
    return Stack(
      children: [
        // task box
        Container(
          height: phelperfuction.screenHeight(context) * 0.2,
          width: double.infinity,
          decoration: BoxDecoration(
              color: dark ? pcolors.darkgrey : pcolors.light,
              borderRadius: BorderRadius.circular(psizes.borderRadiusLg),
              boxShadow: pBoxshadow.scorCardShadow),
          padding: EdgeInsets.all(psizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Time1
              Text(
                task.title1,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: psizes.xs / 2),
              //Time2
              Text(
                task.title2,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: psizes.xs),
              //Task name
              Text(
                task.name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: psizes.xs),
              //Tesk description
              Flexible(
                child: Text(
                  task.description,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        // icon and indicator
        Positioned(
          top: 20,
          right: 15,
          child: SizedBox(
            width: 55,
            height: 55,
            child: Stack(
              children: [
                // indicator
                Container(
                  height: 57,
                  width: 57,
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
        )
      ],
    );
  }
}
