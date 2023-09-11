import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/task.dart';

class TaskList extends StatefulWidget {
  TaskList({super.key, required this.taskList});

  late List<Task> taskList;

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.taskList.length,
        itemBuilder: (BuildContext buildContext, int index) {
          return CheckboxListTile(
            title: Text(
              widget.taskList[index].taskTitle,
              style: widget.taskList[index].isDone ? kTaskListStrikeThroughTextStyle : kTaskListTextStyle,
            ),
            value: widget.taskList[index].isDone,
            onChanged: (bool? value) {
              if (value != null) {
                setState(() {
                  widget.taskList[index].isDone = value;
                });
              }
            },
          );
        });
  }
}
