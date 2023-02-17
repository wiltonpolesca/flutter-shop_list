import 'package:flutter/material.dart';

class NavigationItem {
  String label;
  String? subLabel;
  IconData icon;
  String? route;

  NavigationItem({
    this.label = '',
    this.subLabel = '',
    this.icon = Icons.question_answer,
    this.route,
  });
}
