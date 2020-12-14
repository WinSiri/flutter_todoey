import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("New Task", style: Theme.of(context).textTheme.headline6),
            TextField(
              autofocus: true,
              onChanged: (newText) => newTaskTitle = newText,
            ),
            RaisedButton(
              onPressed: () {
                var taskData = context.read<TaskData>();
                taskData.addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
