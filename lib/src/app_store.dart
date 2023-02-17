import 'package:flutter/material.dart';
import 'package:shopping_list/src/pages/configuration/service/configuration_service.dart';
import 'package:shopping_list/src/shared/services/configuration/configuration_dto.dart';

class AppStore {
  final themeMode = ValueNotifier(ThemeMode.system);
  final syncDate = ValueNotifier<DateTime?>(null);

  final ConfigurationService _configurationService;

  AppStore(this._configurationService) {
    init();
  }

  void init() {
    final value = _configurationService.getConfiguration();
    setThemeMode(_getThemeByName(value.themeModeName), toSave: false);
    setSyncDate(value.syncDate, toSave: false);
  }

  void save() {
    _configurationService.save(
      ConfigurationDTO.init(
        themeMode.value.name,
        syncDate: syncDate.value,
      ),
    );
  }

  void setThemeMode(ThemeMode? mode, {bool toSave = true}) {
    if (mode != null) {
      themeMode.value = mode;
      if (toSave) {
        save();
      }
    }
  }

  void setSyncDate(DateTime? dateTime, {bool toSave = true}) {
    syncDate.value = dateTime;
    if (toSave) {
      save();
    }
  }

  void cleanAppCache() {
    // _configurationService.deleteAll();
  }

  ThemeMode _getThemeByName(String name) {
    return ThemeMode.values.firstWhere((element) => element.name == name);
  }
}
