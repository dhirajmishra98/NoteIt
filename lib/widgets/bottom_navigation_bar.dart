import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:noteit/Screens/notes_screen.dart';
import 'package:noteit/Screens/profile_screen.dart';
import 'package:noteit/Screens/task_management_screen.dart';
import 'package:remixicon/remixicon.dart';

import 'add_screen.dart';
import '../Screens/expense_tracking_screen.dart';
import 'statistics.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int indexColor = 0;
  List screens = [
    const NotesScreen(),
    const TaskManagementScreen(),
    const ExpenseTrackingScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          indexColor == 0
              ? "Note It"
              : indexColor == 1
                  ? "Complete It"
                  : indexColor == 2
                      ? "Track It"
                      : "Profile",
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              height: 40,
              width: 40,
              color: const Color.fromRGBO(250, 250, 250, 0.1),
              child: const Icon(
                Icons.notification_add_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          const Gap(15)
        ],
        backgroundColor: const Color(0xff368983),
      ),
      body: screens[indexColor],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  indexColor = 0;
                });
              },
              child: Icon(
                Remix.sticky_note_add_line,
                size: 30,
                color: indexColor == 0 ? const Color(0xff368983) : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  indexColor = 1;
                });
              },
              child: Icon(
                Remix.list_check_3,
                size: 30,
                color: indexColor == 1 ? const Color(0xff368983) : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  indexColor = 2;
                });
              },
              child: Icon(
                Icons.account_balance_wallet_outlined,
                // Icons.bar_chart_outlined,
                size: 30,
                color: indexColor == 2 ? const Color(0xff368983) : Colors.grey,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  indexColor = 3;
                });
              },
              child: Icon(
                Icons.person_outlined,
                size: 30,
                color: indexColor == 3 ? const Color(0xff368983) : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
