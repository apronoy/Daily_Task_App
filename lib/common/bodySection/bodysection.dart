import 'package:dailytask/common/cards/scorCard.dart';
import 'package:dailytask/common/cards/taskCard.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:dailytask/common/widgets/emojiSection.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class bodySections extends StatelessWidget {
  const bodySections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(psizes.screenPadding),
      child: Column(
        children: [
         const SizedBox(height: psizes.spacebtwsections),
          // scorwidget ...

         const  scorCard(),
         const SizedBox(height: psizes.spacebtwitems),
          Row(children: [
          const  Text('Choose your mood for today',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.arrow_right_34))
          ]),
         const emojisection(),
         const  SizedBox(height: psizes.spacebtwsections),
          
          //gridview builder...
          GridView.builder(
            itemCount: 7,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: psizes.spacebtwitems,
                mainAxisSpacing: psizes.spacebtwitems,
                mainAxisExtent: phelperfuction.screenHeight(context) * 0.20),
            itemBuilder: (context, index) {
              return Taskcard(index: index);
            },
          ),
         const SizedBox(height: psizes.spacebtwsections * 3),
        ],
      ),
    );
  }
}
