import 'package:flutter/material.dart';

class TaskManagementScreen extends StatelessWidget {
  static const String routeName = "/task-management-screen";
  const TaskManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Tasks",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
