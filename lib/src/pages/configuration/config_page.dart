import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shop_list/src/app_store.dart';
import '../../shared/scaffold_app.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final appStore = context.watch<AppStore>((bind) => bind.themeMode);

    return ScaffoldApp(
      complementTitle: 'Configuration',
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Configurations',
              style: textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Theme',
              style: textTheme.titleMedium,
            ),
            RadioListTile(
              value: ThemeMode.system,
              groupValue: appStore.themeMode.value,
              title: const Text('System'),
              onChanged: appStore.setThemeMode,
            ),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: appStore.themeMode.value,
              title: const Text('Light'),
              onChanged: appStore.setThemeMode,
            ),
            RadioListTile(
              value: ThemeMode.dark,
              groupValue: appStore.themeMode.value,
              title: const Text('Dark'),
              onChanged: appStore.setThemeMode,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Data Control',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Clean app cache'),
            )
          ],
        ),
      ),
    );
  }
}
