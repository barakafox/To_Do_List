import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  String taskTitle;
  CustomWidget({required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
