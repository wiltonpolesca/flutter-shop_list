import 'package:flutter/material.dart';

class NavigationItem {
  String label;
  IconData icon;
  String? route;

  NavigationItem({
    this.label = '',
    this.icon = Icons.question_answer,
    this.route,
  });
}
