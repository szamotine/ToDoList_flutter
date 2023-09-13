import 'package:flutter/material.dart';

import '../components/constants.dart';
import '../model/task.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String taskToAdd = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
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
              textCapitalization: TextCapitalization.words,
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
                final Task task = Task(taskTitle: taskToAdd);
              },
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
