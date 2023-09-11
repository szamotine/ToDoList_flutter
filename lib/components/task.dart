class Task {
  final String taskTitle;
  late bool isChecked;

  Task({required this.taskTitle, this.isChecked = false});

  @override
  bool operator ==(Object other) {
    Task temp;
    if (other is Task) {
      temp = other;
    } else {
      return false;
    }
    return this.taskTitle == temp.taskTitle && this.isChecked == temp.taskTitle;
  }

  @override
  String toString() {
    return this.taskTitle;
  }
}

class ListOfTasks {
  late List<Task> taskList = [];

  void add(Task task) => taskList.add(task);
  void clear() => taskList.clear();

  void removeChecked() => {
        for (var task in taskList)
          {
            if (task.isChecked) {taskList.remove(task)}
          }
      };
}
