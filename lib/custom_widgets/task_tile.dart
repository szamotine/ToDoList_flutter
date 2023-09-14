import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/model/task_data.dart';

import '../components/constants.dart';
import '../model/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
    required this.task,
  }); //required this.checkboxCallback

  final Task task;

  // final Function(bool?) checkboxCallback;

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
        onChanged: (bool) {
          Provider.of<TaskData>(context, listen: false).toggleCheck(task);
        },
      ),
    );
  }
}
