import 'package:flutter/material.dart';
import 'package:travel_app/screens/bottom_nav_main/home/home_screen.dart';
import 'package:travel_app/screens/bottom_nav_main/near_me/near_me_screen.dart';
import 'package:travel_app/screens/bottom_nav_main/profile/profile_screen.dart';
import 'package:travel_app/screens/widgets/my_bottom_nav.dart';

List<Widget> listScreenBottomMain = [
  const HomeScreen(),
  const NearMeScreen(),
  const ProfileScreen()
];

class BottomNavMain extends StatefulWidget {
  const BottomNavMain({super.key});

  @override
  State<BottomNavMain> createState() => _BottomNavMainState();
}

class _BottomNavMainState extends State<BottomNavMain> {
  int posScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreenBottomMain[posScreen],
      bottomNavigationBar: MyBottomNav(onChangePage: (index) {
       setState(() {
         posScreen = index;
       });
      }),
    );
  }
}

