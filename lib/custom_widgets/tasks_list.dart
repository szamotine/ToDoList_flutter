import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
              task: taskData.getTaskList[index],
            );
          },
        );
      },
    );
  }
}
