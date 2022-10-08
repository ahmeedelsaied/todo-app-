import 'package:flutter/material.dart';

import 'Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'go shopping'),
    Task(name: 'buy anything'),
    Task(name: 'enjoy')
  ];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
