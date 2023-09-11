import 'package:flutter/material.dart';
import 'package:to_do_list/components/task.dart';

import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Task> taskList = [];
    taskList.add(
      Task(taskTitle: 'Buy Milk'),
    );
    taskList.add(
      Task(
        taskTitle: 'Buy Eggs',
      ),
    );
    taskList.add(
      Task(taskTitle: 'Buy Bread'),
    );

    return MaterialApp(
      home: TaskScreen(
        taskList: taskList,
      ),
    );
  }
}
