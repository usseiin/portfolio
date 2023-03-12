import 'package:flutter/material.dart';

class AppSideBar extends StatelessWidget {
  const AppSideBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
    required this.showDetails,
  });
  final Function(int value) onTap;
  final int currentIndex;
  final bool showDetails;
  @override
  Widget build(BuildContext context) {
    var buildSizeBar = NavigationRail(
      onDestinationSelected: (value) => onTap(value),
      extended: showDetails,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home),
          label: Text("Home"),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.work),
          label: Text("Project"),
        ),
      ],
      selectedIndex: currentIndex,
    );
    return buildSizeBar;
  }
}
