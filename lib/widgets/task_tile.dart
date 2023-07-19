import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final VoidCallback longPressCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: (newValue) {
            checkboxCallback(newValue);
          }),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      onLongPress: longPressCallback,
    );
  }
}
