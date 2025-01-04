import 'package:flutter/material.dart';
import 'package:nusacode_flutter_3/pages/bottom_navbar/tab_1.dart';
import 'package:nusacode_flutter_3/pages/bottom_navbar/tab_2.dart';
import 'package:nusacode_flutter_3/pages/bottom_navbar/tab_3.dart';
import 'package:nusacode_flutter_3/pages/bottom_navbar/tab_4.dart';

class BottomNavbarPage extends StatefulWidget {
  const BottomNavbarPage({super.key});

  @override
  State<BottomNavbarPage> createState() => _BottomNavbarPageState();
}

class _BottomNavbarPageState extends State<BottomNavbarPage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Tab1(),
        Tab2(),
        Tab3(),
        Tab4(),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedIconTheme: IconThemeData(color: Colors.black),
        currentIndex: index,
        onTap: (value) => setState(() {
          index = value;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
