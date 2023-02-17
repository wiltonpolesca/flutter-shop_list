import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shopping_list/src/app_store.dart';
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

    final appStore = context.watch<AppStore>((bind) => bind.themeMode);

    return MaterialApp.router(
      title: title,
      themeMode: appStore.themeMode.value,
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
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
