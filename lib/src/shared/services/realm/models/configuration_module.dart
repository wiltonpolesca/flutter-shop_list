import 'package:realm/realm.dart';

part 'configuration_module.g.dart';

@RealmModel()
class _ConfigurationModule {
  late String themeModeName;
  late DateTime? syncDate;
}
