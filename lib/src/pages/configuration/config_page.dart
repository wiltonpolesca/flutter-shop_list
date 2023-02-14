import 'package:flutter/material.dart';
import '../../shared/scaffold_app.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      complementTitle: 'Configuration',
      body: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Configurations',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Theme',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            RadioListTile(
              value: ThemeMode.system,
              groupValue: ThemeMode.system,
              title: const Text('System'),
              onChanged: (mode) {},
            ),
            RadioListTile(
              value: ThemeMode.light,
              groupValue: ThemeMode.system,
              title: const Text('Light'),
              onChanged: (mode) {},
            ),
            RadioListTile(
              value: ThemeMode.dark,
              groupValue: ThemeMode.system,
              title: const Text('Dark'),
              onChanged: (mode) {},
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
