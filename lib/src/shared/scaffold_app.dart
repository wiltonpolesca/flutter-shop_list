import 'package:flutter/material.dart';
import 'package:shop_list/src/shared/widgets/user_avatar_button.dart';

class ScaffoldApp extends StatelessWidget {
  final Widget? drawer;
  final Widget? body;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;

  final String? title;
  final String? complementTitle;

  const ScaffoldApp({
    this.drawer,
    this.body,
    this.appBar,
    this.floatingActionButton,
    this.title = 'Shopping List',
    this.complementTitle,
    super.key,
  });

  PreferredSizeWidget? _appBar(BuildContext context) =>
      appBar ??
      AppBar(
        title: Row(
          children: [
            Text(title!),
            Text(
              complementTitle ?? '',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserAvatarButton(),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      appBar: _appBar(context),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
