import 'package:flutter_modular/flutter_modular.dart';
import 'package:realm/realm.dart';
import 'package:shopping_list/src/app_store.dart';
import 'package:shopping_list/src/pages/Syncronization/sync_page.dart';
import 'package:shopping_list/src/pages/configuration/config_page.dart';
import 'package:shopping_list/src/pages/configuration/service/configuration_service.dart';
import 'package:shopping_list/src/pages/home/home_module_router.dart';
import 'package:shopping_list/src/shared/services/realm/realm_config.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.instance<Realm>(Realm(realmConfig)),
        // AutoBind.singleton<Realm>(() => Realm(realmConfig)),
        AutoBind.factory<ConfigurationService>(ConfigurationServiceRealm.new),
        // Bind.singleton((i) => AppStore(i())), --> old way to do
        AutoBind.singleton(AppStore.new),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ChildRoute(
          '/sync',
          child: (context, args) => const SyncronizationPage(),
        ),
        ChildRoute(
          '/config',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
