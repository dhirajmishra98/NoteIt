import 'package:flutter/material.dart';
import 'package:noteit/Screens/expense_tracking_screen.dart';
import 'package:noteit/Screens/notes_screen.dart';
import 'package:noteit/Screens/profile_screen.dart';
import 'package:noteit/Screens/task_management_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case NotesScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const NotesScreen(),
      );

    case TaskManagementScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const TaskManagementScreen(),
      );

    case ExpenseTrackingScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const ExpenseTrackingScreen(),
      );

    case ProfileScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Error Occurred'),
          ),
        ),
      );
  }
}
