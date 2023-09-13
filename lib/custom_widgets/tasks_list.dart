import 'package:flutter/material.dart';

import '../model/task.dart';
import 'task_tile.dart';

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
