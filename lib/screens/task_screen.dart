import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/screens/add_task_screen.dart';

import '../components/constants.dart';
import '../custom_widgets/tasks_list.dart';
import '../model/task_data.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

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
                  addTaskCallback: (taskToAdd) {
                    // setState(
                    //   () {
                    //     Task task = Task(taskTitle: taskToAdd);
                    //     //Provider.of<TaskData>(context, listen: false).add(task);
                    //     Navigator.pop(context);
                    //   },
                    // );
                  },
                ),
              ),
            ),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Icon(
                      Icons.list,
                      size: 50,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'To do list',
                    style: kToDoTitleTextStyle,
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).tasks.length} tasks',
                    style: kToDoSubTitleTextStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
                  child: TasksList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
