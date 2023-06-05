import 'package:flutter/material.dart';
import 'package:travel_app/config/theme/color_schemes.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key, required this.onChangePage});

  final Function(int index) onChangePage;

  defaultFunctiton(int index) {}

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: colorScheme(context).onTertiary,
        onTap: (value)=> onChangePage(value),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "Near me"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "Profile"),
        ]);
  }
}
