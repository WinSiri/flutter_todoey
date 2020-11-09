import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
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
                  "12 Tasks",
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
