import 'package:flutter/material.dart';

import '../components/constants.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
    required this.toDoList,
    required this.list,
  });

  final List<String> toDoList;
  final Map<String, bool> list;
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.toDoList.length,
        itemBuilder: (BuildContext buildContext, int index) {
          return CheckboxListTile(
            title: Text(
              widget.toDoList[index],
              style: widget.list[widget.toDoList[index]]! ? kTaskListStrikeThroughTextStyle : kTaskListTextStyle,
            ),
            value: widget.list[widget.toDoList[index]],
            onChanged: (bool? value) {
              if (value != null) {
                setState(() {
                  widget.list[widget.toDoList[index]] = value;
                });
              }
            },
          );
        });
  }
}
