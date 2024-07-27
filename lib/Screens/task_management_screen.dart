import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:remixicon/remixicon.dart';

import '../widgets/task_category_card.dart';

class TaskManagementScreen extends StatelessWidget {
  static const String routeName = "/task-management-screen";
  const TaskManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Tasks",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Color(
                  0xFF333333), // Matching the default Material Design text color
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => const TaskCategoryCard(
              title: "Personal",
              backgroundColor: Colors.red,
              left: 5,
              done: 8,
              icon: Remix.user_fill,
            ),
          ),
        )
      ],
    );
  }
}
