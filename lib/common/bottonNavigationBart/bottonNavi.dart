import 'dart:ui';
import 'package:dailytask/common/bottonNavigationBart/navigation_controler.dart';
import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/constants/sizes/sizes.dart';
import 'package:dailytask/utilities/helperFuction/helperfuction.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    // with getx Navigation bar  ....

    final controler = Get.put(navigationControler());

    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => IndexedStack(
              index: controler.selectedind.value,
              children: controler.screens,
            ),
          ),
          Obx(
            () => Positioned(
              bottom: psizes.md,
              left: psizes.sm,
              right: psizes.sm,
              child: SafeArea(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(
                              phelperfuction.isdark(context) ? 0.4 : 0.5)),
                      child: BottomNavigationBar(
                        backgroundColor: Colors.transparent,
                        elevation: 20,
                        type: BottomNavigationBarType.fixed,
                        selectedItemColor: pcolors.primaryColor,
                        unselectedItemColor: pcolors.white,
                        currentIndex: controler.selectedind.value,
                        onTap: controler.ontapchange,
                        items: const [
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: 'Home',
                          ),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.analytics), label: 'Analytics'),
                          BottomNavigationBarItem(
                              icon: Icon(Icons.person), label: 'Profile'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

 



 
 
// this is matarial3 way Widget ........

// import 'package:dailytask/constens.dart';
//  import 'package:dailytask/home.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class bottomNavigationBar extends StatefulWidget {
//   const bottomNavigationBar({super.key});

//   @override
//   State<bottomNavigationBar> createState() => _bottomNavigationBarState();
// }

// class _bottomNavigationBarState extends State<bottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     final controler = Get.put(navigationControler());
//     return Scaffold(
//         body: Obx(() => controler.screens[controler.selectedind.value]),
//         bottomNavigationBar: Obx(
//           () => NavigationBar(
//               elevation: 0,
//               backgroundColor: Colors.transparent,
//               selectedIndex: controler.selectedind.value,
//               onDestinationSelected: (value) {
//                 controler.selectedind.value = value;
//               },
//               indicatorColor: Pmanager.primaryColor,
//               destinations: [
//                 NavigationDestination(
//                     icon: Icon(Icons.home_outlined),
//                     label: 'Home',
//                     selectedIcon: Icon(Icons.home)),
//                 NavigationDestination(
//                   icon: Icon(Icons.analytics_outlined),
//                   label: 'Analytic',
//                   selectedIcon: Icon(Icons.analytics),
//                 ),
//                 NavigationDestination(
//                     icon: Icon(Icons.person_outline),
//                     label: 'Profile',
//                     selectedIcon: Icon(Icons.person))
//               ]),
//         ));
//   }
// }

