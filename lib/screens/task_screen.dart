import 'package:flutter/material.dart';
import 'package:to_do_list/screens/add_task_screen.dart';

import '../components/constants.dart';
import '../components/task.dart';
import '../custom_widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key, required this.taskList});

  late List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(
                  taskList: taskList,
                ),
              ),
            ),
          );
        },
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
                    'To do list',
                    style: kToDoTitleTextStyle,
                  ),
                  Text(
                    '${taskList.length} tasks',
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
                  child: TaskList(
                    taskList: taskList,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
