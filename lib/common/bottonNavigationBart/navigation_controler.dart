import 'package:dailytask/Navigation_tabBar/analysis.dart';
import 'package:dailytask/Navigation_tabBar/home.dart';
import 'package:dailytask/Navigation_tabBar/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class navigationControler extends GetxController {
  static navigationControler get instance => Get.find();
  RxInt selectedind = 0.obs;
  List<Widget> screens = [ const HomePage(),const AnalysisPage(), const ProfilePage()];

  void ontapchange(int index) {
    selectedind.value = index;
  }
}
