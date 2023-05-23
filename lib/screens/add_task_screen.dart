import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle = '';
  final Function(String taskTitle) addTaskCallback;
  AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.lightBlueAccent),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}
