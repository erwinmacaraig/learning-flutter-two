import 'package:flutter/material.dart';
import 'widgets.dart';
import '../models/models.dart';

class TasksList extends StatefulWidget {
  _TaskListsState createState() => _TaskListsState();
}

class _TaskListsState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Wash Car'),
    Task(name: 'Study Flutter'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
