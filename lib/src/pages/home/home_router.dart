import 'package:flutter_modular/flutter_modular.dart';
import 'package:shop_list/src/pages/home/home_page.dart';

import '../configuration/config_page.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute(
          '/edit',
          child: (context, args) => const ConfigurationPage(),
        ),
      ];
}
