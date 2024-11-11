import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/Provider/todo_provider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = ''; 
    final taskObject = Provider.of<TaskProvider>(context,listen: false); 

    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.teal[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText; 
            },
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              if (newTaskTitle.trim() != '') {
               
                taskObject.addTask(newTaskTitle); 
              }
              Navigator.pop(context); 
            },
            style: TextButton.styleFrom(backgroundColor: Colors.teal[400]),
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}