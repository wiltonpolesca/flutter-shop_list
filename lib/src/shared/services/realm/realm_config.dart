import 'package:realm/realm.dart';
import 'models/configuration_module.dart';

LocalConfiguration realmConfig = Configuration.local(
  [
    ConfigurationModule.schema,
  ],
  initialDataCallback: (realm) {
    realm.add(ConfigurationModule('system'));
  },
);
