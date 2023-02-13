import 'package:flutter_modular/flutter_modular.dart';
import 'package:shop_list/src/pages/Syncronization/sync_page.dart';
import 'package:shop_list/src/pages/configuration/config_page.dart';
import 'package:shop_list/src/pages/home/home_router.dart';

class AppModule extends Module {
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
