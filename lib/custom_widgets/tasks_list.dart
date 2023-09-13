import 'package:flutter/material.dart';

import '../model/task.dart';
import 'task_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
    required this.tasks,
  });

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (BuildContext, int index) {
          return TaskTile(
            task: widget.tasks[index],
            checkboxCallback: (checkboxCallBack) {
              setState(() {
                widget.tasks[index].toggleChecked();
              });
            },
          );
        });
  }
}
