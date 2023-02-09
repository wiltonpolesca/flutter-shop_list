import 'package:flutter/material.dart';
import 'package:shop_list/src/home/home_page.dart';
import 'package:shop_list/src/shared/app_widget.dart';

void main() {
  const _appTitle = 'Shopping List';
  runApp(const AppWidget(_appTitle, HomePage()));
}
