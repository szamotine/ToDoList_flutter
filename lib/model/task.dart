class Task {
  final String taskTitle;
  late bool isChecked;

  Task({required this.taskTitle, this.isChecked = false});

  void toggleChecked() {
    isChecked = !isChecked;
  }

  @override
  bool operator ==(Object other) {
    Task temp;
    if (other is Task) {
      temp = other;
    } else {
      return false;
    }
    return taskTitle == temp.taskTitle && isChecked == temp.isChecked;
  }

  @override
  String toString() {
    return taskTitle;
  }

  @override
  int get hashCode => super.hashCode;
}
