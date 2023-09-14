import 'package:flutter/foundation.dart';
import 'package:to_do_list/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskTitle: 'Buy Bread'),
    Task(taskTitle: 'Buy Milk'),
    Task(taskTitle: 'Buy Chicken'),
  ];

  add(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }
}
