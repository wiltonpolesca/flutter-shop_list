import 'package:flutter/material.dart';

import 'theme/themes.dart';

class AppWidget extends StatelessWidget {
  final String title;
  final Widget home;
  final ThemeMode themeMode;
  const AppWidget(
    this.title,
    this.home, {
    this.themeMode = ThemeMode.light,
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: home,
    );
  }
}
