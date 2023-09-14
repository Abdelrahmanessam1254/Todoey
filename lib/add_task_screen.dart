import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Task_Provider.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String newTaskTitle = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(height: 15,),
            CircleAvatar(
              radius: 30,
              child: IconButton(
                  icon: const Icon(Icons.add,size: 30,),
                  // style: Colors.lightBlueAccent,
                  onPressed: () {
                    context.read<TaskProvider>().addCardToList(newTaskTitle);
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
