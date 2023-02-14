import 'package:flutter/material.dart';
import 'package:shop_list/src/shared/widgets/navigation_menu.dart';
import '../../shared/scaffold_app.dart';
import '../../shared/widgets/navigation_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NavigationItem> get navigationItems => [
        NavigationItem(
          label: 'Syncronization',
          icon: Icons.sync,
          route: '/sync',
        ),
        NavigationItem(
          label: 'Configuration',
          icon: Icons.settings,
          route: '/config',
        )
      ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldApp(
      drawer: NavigationMenu('Options', navigationItems),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(
                    value: 0,
                    label: Text('All'),
                  ),
                  ButtonSegment(
                    value: 1,
                    label: Text('Pending'),
                  ),
                  ButtonSegment(
                    value: 2,
                    label: Text('Done'),
                  ),
                  ButtonSegment(
                    value: 3,
                    label: Text('Removed'),
                  ),
                ],
                onSelectionChanged: (values) {},
                selected: const {0},
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('New List'),
        icon: const Icon(Icons.edit),
        onPressed: () => Navigator.of(context).pushNamed('./edit'),
      ),
    );
  }
}