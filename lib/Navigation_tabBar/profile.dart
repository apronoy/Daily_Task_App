import 'package:dailytask/common/widgets/profileHeaderSection.dart';
import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header section here ...
            profileHeaderSection(),
            //Body parts ...
            SizedBox(height: psizes.sm),

            Padding(
              padding: const EdgeInsets.all(psizes.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Name, user name , Edit button ....

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'APronoy Sarkar ',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w500),
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Iconsax.edit))
                        ],
                      ),
                      SizedBox(height: psizes.xs),
                      Text(
                        '@apronoy17',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: psizes.spacebtwsections,
                      )
                    ],
                  ),
                  // account Informations ...
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Informations ',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w100),
                      ),
                      SizedBox(height: psizes.spacebtwitems),
                      // email ..
                      Row(
                        children: [
                          Icon(Icons.mail_outline_sharp),
                          SizedBox(width: psizes.spacebtwitems),
                          Text(
                            'apronoySarkar70@gmail.com',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: psizes.spacebtwitems),
                      // number ..
                      Row(
                        children: [
                          Icon(Iconsax.mobile),
                          SizedBox(width: psizes.spacebtwitems),
                          Text(
                            '01846624175',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: psizes.spacebtwitems),
                      // Address ...
                      Row(
                        children: [
                          Icon(Iconsax.building),
                          SizedBox(width: psizes.spacebtwitems),
                          Text(
                            'Noakhali , Bangladesh ',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: psizes.spacebtwsections)
                    ],
                  ),
                  // Settings and other options ..

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Settings',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w100),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Iconsax.arrow_right_34))
                        ],
                      ),
                      SizedBox(height: psizes.spacebtwitems),
                      // Helpline ...
                      Row(
                        children: [
                          Text(
                            'HelpLine',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w100),
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.help_outline_outlined))
                        ],
                      ),
                      SizedBox(height: psizes.spacebtwitems),
                    ],
                  ),
                  //logout section ...
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: psizes.spacebtwsections + 50),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                color: pcolors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: pcolors.primaryColor,
                              side: BorderSide(color: pcolors.primaryColor)),
                        ),
                      ),
                      SizedBox(
                        height: psizes.lg + 50,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
