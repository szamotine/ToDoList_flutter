import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../custom_widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});

  late Map<String, bool> list = Map.fromIterable(toDoList, key: (item) => item, value: (item) => false);

  late List<String> toDoList = [
    'Buy Milk',
    'Buy Eggs',
    'Buy Bread',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Icon(
                      Icons.list,
                      size: 50,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'To do',
                    style: kToDoTitleTextStyle,
                  ),
                  Text(
                    '12 tasks',
                    style: kToDoSubTitleTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
                  child: TaskList(toDoList: toDoList, list: list),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
