import 'package:flutter/material.dart';
import '../../shared/scaffold_app.dart';

class EditTaskBoardPage extends StatelessWidget {
  const EditTaskBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldApp(
      complementTitle: 'edit',
    );
  }
}
