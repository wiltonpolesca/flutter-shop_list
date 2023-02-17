import 'package:realm/realm.dart';
import 'package:shopping_list/src/shared/services/configuration/configuration_dto.dart';
import 'package:shopping_list/src/shared/services/realm/models/configuration_module.dart';

abstract class ConfigurationService {
  ConfigurationDTO getConfiguration();
  void save(ConfigurationDTO dto);
  void deleteAll();
}

class ConfigurationServiceRealm implements ConfigurationService {
  final Realm realm;

  ConfigurationServiceRealm(this.realm);

  ConfigurationModule get _getConfig => realm.all<ConfigurationModule>().first;

  @override
  void deleteAll() {
    realm.deleteAll();
  }

  @override
  ConfigurationDTO getConfiguration() {
    final value = _getConfig;
    final dto = ConfigurationDTO.init(
      value.themeModeName,
      syncDate: value.syncDate,
    );

    return dto;
  }

  @override
  void save(ConfigurationDTO dto) {
    final value = _getConfig;
    realm.write(
      () => {
        value.syncDate = dto.syncDate,
        value.themeModeName = dto.themeModeName
      },
    );
  }
}
