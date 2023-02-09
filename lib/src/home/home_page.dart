import 'package:flutter/material.dart';
import 'package:shop_list/src/shared/widgets/user_avatar_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserAvatarButton(),
          )
        ],
      ),
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
        onPressed: () {},
        label: const Text('New List'),
        icon: const Icon(Icons.edit),
      ),
    );
  }
}
