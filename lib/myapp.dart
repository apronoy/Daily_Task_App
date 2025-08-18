import 'package:dailytask/common/bottonNavigationBart/bottonNavi.dart';
import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // For Light theme ..
      theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: pcolors.dark),
          textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme)
              .apply(bodyColor: pcolors.black, displayColor: pcolors.black)),
      // For dark theme ..
      darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: pcolors.light),
          textTheme: GoogleFonts.nunitoTextTheme(ThemeData.light().textTheme)
              .apply(bodyColor: pcolors.white, displayColor: pcolors.white)),
      themeMode: ThemeMode.system,

      home: const bottomNavigationBar(),
    );
  }
}
