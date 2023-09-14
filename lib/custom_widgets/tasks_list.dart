import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          task: Provider.of<TaskData>(context).tasks[index],
          checkboxCallback: (checkboxCallBack) {
            // setState(() {
            //   // widget.tasks[index].toggleChecked();
            // }
            // );
          },
        );
      },
    );
  }
}
