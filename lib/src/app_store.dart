import 'package:flutter/material.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);
  final syncDate = ValueNotifier<DateTime?>(null);

  // TODO(wlps): Save the data
  void save() {
    print('Save called');
  }

  void setThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  void setSyncDAte(DateTime? dateTime) {
    syncDate.value = dateTime;
    save();
  }
}
