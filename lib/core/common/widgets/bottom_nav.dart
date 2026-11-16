import 'package:flutter/material.dart';
import 'package:grocify/features/insights/presentation/screens/insight_screen.dart';
import 'package:grocify/features/list/presentation/screens/list_screen.dart';
import 'package:grocify/features/planner/presentation/screens/planner_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentPageIndex = 0;

  final _screens = [ListScreen(), PlannerScreen(), InsightScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) => setState(() {
          _currentPageIndex = value;
        }),
        destinations: [
          NavigationDestination(icon: Icon(Icons.list), label: "List"),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            label: "Planner",
          ),
        ],
      ),

      body: _screens[_currentPageIndex],
    );
  }
}
