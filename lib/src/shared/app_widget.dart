import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
//https://stackoverflow.com/questions/65182393/why-is-flutter-not-generating-the-internationalization-files
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
    Modular.setInitialRoute('/');

    return MaterialApp.router(
      title: title,
      themeMode: themeMode,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerDelegate: Modular.routerDelegate,
      routeInformationParser: Modular.routeInformationParser,
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('en'), // English
      //   Locale('fr'), // Fran
      //   Locale('pt'), // Português
      // ],
    );
  }
}
