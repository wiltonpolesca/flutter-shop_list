import 'package:flutter/material.dart';
import '../../shared/scaffold_app.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      complementTitle: 'Configuration',
      body: Column(children: [
        const Text('Configurations'),
        const Text('Theme'),
        const Text('Data Control'),
        OutlinedButton(
          onPressed: () {},
          child: const Text('Clean app cache.'),
        )
      ]),
    );
  }
}
