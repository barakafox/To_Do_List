import 'package:flutter/material.dart';
import 'package:to_do_list/Model/todo_model.dart';
import 'package:to_do_list/Service/todo_service.dart';

class TaskProvider extends ChangeNotifier {
  TaskModel? taskModel;

  Future<void> getData() async {
    taskModel = await TaskService.fetchData();
    notifyListeners();
  }

    Future<void> addTask(String newTask) async {
    await TaskService.addItem(newTask: newTask);

    taskModel?.todos.add({"todo": newTask}); 

    notifyListeners();
  }
}
