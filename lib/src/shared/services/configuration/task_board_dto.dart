import 'package:realm/realm.dart';
import 'package:shopping_list/src/shared/services/configuration/task_dto.dart';

class TaskBoardDTO {
  Uuid? id;
  String title = '';
  List<TaskDTO> tasks = const [];
  bool enabled = true;

  TaskBoardDTO();

  TaskBoardDTO.init({
    this.id,
    this.title = '',
    this.enabled = true,
    this.tasks = const [],
  });
}
