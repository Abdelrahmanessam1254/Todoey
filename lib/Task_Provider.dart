import 'package:flutter/cupertino.dart';
import 'Tasks.dart';

final List<Task> intialData = [];

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = intialData;
  List<Task> get tasks => _tasks;

  void addCardToList(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }

  void removeCardFromList(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
