import 'package:flutter/material.dart';
import '../../../shared/services/configuration/task_board_dto.dart';

class TaskCard extends StatelessWidget {
  final TaskBoardDTO taskBoard;
  const TaskCard(this.taskBoard, {super.key});

  @override
  Widget build(BuildContext context) {
    const iconData = Icons.alarm;
    const progress = 0.5;
    const progressText = '1 / 5';
    const statusText = 'In Progress';
    const color = Colors.red;
    final backgroundCollor = Colors.red.withOpacity(0.5);

    return Container(
      height: 120,
      decoration: BoxDecoration(
        color: backgroundCollor,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      padding:
          const EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(iconData),
              Spacer(),
              Text(statusText),
            ],
          ),
          const Spacer(),
          Text(taskBoard.title),
          const LinearProgressIndicator(
            value: progress,
            color: color,
          ),
          const Text(progressText),
        ],
      ),
    );
  }
}
