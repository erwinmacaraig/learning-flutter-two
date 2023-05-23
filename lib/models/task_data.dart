import 'package:flutter/material.dart';
import './models.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Wash Car'),
    Task(name: 'Study Flutter'),
  ];
}
