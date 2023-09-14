import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;

  final String taskTitle;

  final Function(bool?)? checkboxCallback;

  final VoidCallback? longPressCallback;

  const TaskTile({
    super.key,
    required this.isChecked,
    this.taskTitle = "",
    this.checkboxCallback,
    this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
