import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/models/task_data.dart';
import 'package:flutter_todoey/widgets/tasks_list.dart';
import 'package:flutter_todoey/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (context) => SingleChildScrollView(
            child: Container(
              // Move widgets above when keyboard is active
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddTaskScreen(),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).cardColor,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Todoey",
                  style: Theme.of(context).primaryTextTheme.headline2.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                Text(
                  "${context.watch<TaskData>().taskCount} Tasks",
                  style: Theme.of(context).primaryTextTheme.headline6,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
              ),
              child: TasksList(),
            ),
          )
        ],
      ),
    );
  }
}
