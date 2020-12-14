import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todoey/screens/tasks_screen.dart';
import 'package:flutter_todoey/models/task_data.dart';

void main() => runApp(TodoeyApp());

class TodoeyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        darkTheme: ThemeData.dark()
            .copyWith(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: TasksScreen(),
      ),
    );
  }
}
