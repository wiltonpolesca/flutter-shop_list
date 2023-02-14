import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shop_list/app_module_router.dart';
import 'package:shop_list/src/pages/home/home_page.dart';
import 'package:shop_list/src/shared/app_widget.dart';

void main() {
  const _appTitle = 'Shopping List';
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(_appTitle, HomePage()),
    ),
  );
}
