import 'package:flutter/material.dart';

import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Task task1 = Task(taskTitle: 'Buy Milk');
    // Task task2 = Task(taskTitle: 'Buy Eggs');
    // Task task3 = Task(taskTitle: 'Buy Bread', isChecked: true);

    // ListOfTasks listOfTasks = ListOfTasks();
    // listOfTasks.taskList.add(task1);
    // listOfTasks.taskList.add(task2);
    // listOfTasks.taskList.add(task3);

    return MaterialApp(
      home: TaskScreen(
          // listOfTasks: listOfTasks,
          ),
    );
  }
}
