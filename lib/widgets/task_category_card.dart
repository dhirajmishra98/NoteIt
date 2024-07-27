
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TaskCategoryCard extends StatelessWidget {
  const TaskCategoryCard({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.left,
    required this.done,
    required this.icon,
  });

  final String title;
  final Color backgroundColor;
  final int left;
  final int done;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              icon,
              color: Colors.grey.shade700,
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Gap(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Text("$left left"),
              ),
              const Gap(5),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, backgroundColor: Colors.yellow),
                child: Text("$done done"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
