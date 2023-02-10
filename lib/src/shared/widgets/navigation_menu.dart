import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  final String? navigationTitle;
  final Map<String, IconData> navigations;

  const NavigationMenu(this.navigationTitle, this.navigations, {super.key});

  List<Widget> getDestinations(BuildContext context) {
    final items = <Widget>[];
    final navTitle =
        (navigationTitle?.isEmpty ?? true) == true ? '' : navigationTitle!;

    items.add(
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: Text(
          navTitle,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );

    for (final element in navigations.entries) {
      items.add(
        NavigationDrawerDestination(
          icon: Icon(element.value),
          label: Text(element.key),
        ),
      );
    }
    return items.isEmpty ? List<Widget>.empty() : items as List<Widget>;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: getDestinations(context),
    );
  }
}
