import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/model/task_data.dart';

import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

//Todo: Add firebase db functionality to store persistent data

//Todo: Add functionality to store multiple lists

//Todo: Add home page, login page

//Todo: Add google login functionality

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // builder: (context) => TaskData(),
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
