import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../components/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key, required this.taskList});

  late List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    String taskToAdd = '';

    return Container(
      // height: 400,
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        // height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              style: kTaskListAddTaskTextStyle,
              textAlign: TextAlign.center,
            ),
            TextField(
              onChanged: (value) {
                taskToAdd = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Add task here',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 4,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Task task = Task(taskTitle: taskToAdd);
                taskList.add(task);
                print('added ${task.taskTitle} to list');
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
