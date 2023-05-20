import 'package:flutter/material.dart';
import './widgets.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool? checkboxState)? checkboxCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.grey,
        value: isChecked,
        onChanged: checkboxCallback,
        // onChanged: (bool? newValue) {
        //   checkboxCallback!(newValue);
        // },
      ),

      //TaskCheckbox(isChecked, checkboxCallback),
    );
  }
}
