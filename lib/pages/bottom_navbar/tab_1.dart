import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
          bottom: TabBar(tabs: [
            Tab(
              text: "A",
            ),
            Tab(
              text: "B",
            ),
            Tab(
              text: "C",
            ),
            Tab(
              text: "C",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text(
              "Primary Message",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "Additional Message",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "Primary Message",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "Additional Message",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
