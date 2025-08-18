 
  import 'package:dailytask/common/bodySection/bodysection.dart';
   import 'package:dailytask/common/headsection/homeappBar.dart';
 import 'package:flutter/material.dart';
 
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          SingleChildScrollView(
            child: const Column(
              children: [
                // home app bar
              const  HomeAppBar(),
              //  body section 
              const  bodySections(),
                
               ],
            ),
          ),
        // bottomNavigationBar()
        ],
      
      ),
    );
  }
}


