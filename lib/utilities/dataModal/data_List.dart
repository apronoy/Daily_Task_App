import 'package:dailytask/utilities/constants/colors/colors.dart';
import 'package:dailytask/utilities/dataModal/data_modal.dart';
 import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Datalist {

  Datalist._();
  static List<DataModal> data = [
    DataModal(
        'Sleep', '40m', Iconsax.moon, 'Sleep Well', Colors.purple, '7h', 0.90),
    DataModal('Sunlight', '20m', Icons.wb_sunny, "it's time to work ",
        pcolors.primaryColor, '8h', 0.60),
    DataModal('Fasting', '30m', Icons.free_breakfast, 'Good food well health',
        Colors.blue, '1h', 0.55),
    DataModal('Supplements', '10m', Icons.sports_football_sharp,
        'Good Start , do not stop ', Colors.green, '2h', 0.90),
    DataModal(
        'Reading', '30m', Icons.book, 'Gain Knowladge', Colors.red, '2h', 0.85),
    DataModal(
        'Work', '30m', Icons.work, 'Do not be a lazy', Colors.teal, '5h', 0.85),
    DataModal('Meditation', '30m', Icons.sunny, 'Clam your self', Colors.green,
        '0h', 0.65),
    DataModal(
        'Sleep', '40m', Iconsax.moon, 'Sleep Well', Colors.purple, '6h', 0.75),
    DataModal('Sunlight', '20m', Iconsax.sun, "it's time to work ",
        pcolors.primaryColor, '8h', 0.75),
    DataModal('Fasting', '30m', Icons.free_breakfast, 'Good food well health',
        Colors.blue, '1h', 0.75),
    DataModal('Supplements', '10m', Icons.sports_football_sharp,
        'Good Start , do not stop ', Colors.green, '2h', 0.75),
  ];
}