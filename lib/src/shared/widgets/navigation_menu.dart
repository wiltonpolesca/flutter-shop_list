import 'package:flutter/material.dart';

import 'navigation_item.dart';

class NavigationMenu extends StatelessWidget {
  final String? navigationTitle;
  final List<NavigationItem> navigations;

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

    for (final element in navigations) {
      items.add(
        NavigationDrawerDestination(
          icon: Icon(element.icon),
          label: Text(element.label),
        ),
      );
    }
    return items.isEmpty ? List<Widget>.empty() : items;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: getDestinations(context),
      onDestinationSelected: (index) {
        final item = navigations.elementAt(index);
        if (item.route?.isNotEmpty == true) {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed(item.route!);
        }
      },
    );
  }
}
