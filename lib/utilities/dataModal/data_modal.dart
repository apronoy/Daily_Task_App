import 'package:flutter/material.dart';

class DataModal {
  final String name;
  final String title1;
  final String title2;
  final IconData icon;
  final String description;
  final Color color;
  final double indicatorValue;

  DataModal(this.name, this.title2, this.icon, this.description, this.color,
      this.title1, this.indicatorValue);
}
