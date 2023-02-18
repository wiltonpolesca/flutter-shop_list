import 'package:realm/realm.dart';

class TaskDTO {
  Uuid? id;
  String? description;
  bool? completed = false;

  TaskDTO.init({this.id, this.description, this.completed});
}
