import 'package:flutter/material.dart';

import 'navigation_item.dart';

class NavigationMenu extends StatelessWidget {
  final String? navigationTitle;
  final List<NavigationItem> navigations;

  const NavigationMenu(this.navigationTitle, this.navigations, {super.key});

  List<Widget> getDestinations(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final items = <Widget>[];
    final navTitle =
        (navigationTitle?.isEmpty ?? true) == true ? '' : navigationTitle!;

    items.add(
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: Text(
          navTitle,
          style: textTheme.titleSmall,
        ),
      ),
    );

    for (final element in navigations) {
      final subLabel = element.subLabel ?? '';
      items.add(
        NavigationDrawerDestination(
          icon: Icon(element.icon),
          label: Row(
            children: [
              Text(
                element.label,
                style: textTheme.titleMedium,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(subLabel, style: textTheme.bodySmall),
            ],
          ),
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
