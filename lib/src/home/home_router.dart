import 'package:flutter_modular/flutter_modular.dart';
import 'package:shop_list/src/home/home_page.dart';

class HomeRouter extends Module {
  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const HomePage())];
}
