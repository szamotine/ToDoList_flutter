import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../model/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskTitle: 'Buy Bread'),
    Task(taskTitle: 'Buy Milk'),
    Task(taskTitle: 'Buy Chicken'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (BuildContext, int index) {
          return TaskTile(
            task: tasks[index],
            checkboxCallback: (checkboxCallBack) {
              setState(() {
                tasks[index].toggleChecked();
              });
            },
          );
        });
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({super.key, required this.task, required this.checkboxCallback});

  final Task task;

  final Function(bool?) checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task.taskTitle,
        style: task.isChecked ? kTaskListStrikeThroughTextStyle : kTaskListTextStyle,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: task.isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
