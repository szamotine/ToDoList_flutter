import 'package:flutter/foundation.dart';
import 'package:to_do_list/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskTitle: 'Buy Bread'),
    Task(taskTitle: 'Buy Milk'),
    Task(taskTitle: 'Buy Chicken'),
  ];

  int get taskCount => _tasks.length;

  List<Task> get getTaskList => _tasks;

  createNewTask(String newTaskTitle) {
    final task = Task(taskTitle: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  toggleCheck(Task input) {
    final task = _tasks.elementAt(_tasks.indexOf(input));
    task.isChecked = !task.isChecked;
    notifyListeners();
  }

  removeCheckedTasks() {
    _tasks.removeWhere((element) => element.isChecked);

    notifyListeners();
  }
}
