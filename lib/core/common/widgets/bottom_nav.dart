import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:grocify/features/insights/presentation/screens/insight_screen.dart';
import 'package:grocify/features/list/presentation/screens/list_screen.dart';
import 'package:grocify/features/planner/presentation/screens/planner_screen.dart';

class BottomNav extends StatefulWidget {
  @Preview(name: 'Bottom Nav')
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
      extendBody: true,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentPageIndex,
        onDestinationSelected: (value) => setState(() {
          _currentPageIndex = value;
        }),
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.list_alt_outlined),
            label: "List",

            selectedIcon: Icon(Icons.list_alt_rounded),
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            selectedIcon: Icon(Icons.add_circle),
            label: "Planner",
          ),

          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined),
            selectedIcon: Icon(Icons.bar_chart_rounded),
            label: "Insight",
          ),
        ],
      ),

      body: _screens[_currentPageIndex],
    );
  }
}
