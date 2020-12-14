import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, _) => ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          var task = taskData.tasks[index];
          return TaskTile(
            tileTitle: task.title,
            isChecked: task.isDone,
            checkboxCallback: (bool newValue) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
      ),
    );
  }
}
