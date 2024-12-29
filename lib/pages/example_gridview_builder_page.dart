import 'package:flutter/material.dart';

class ExampleGridviewBuilderPage extends StatefulWidget {
  const ExampleGridviewBuilderPage({super.key});

  @override
  State<ExampleGridviewBuilderPage> createState() =>
      _ExampleGridviewBuilderPageState();
}

class _ExampleGridviewBuilderPageState
    extends State<ExampleGridviewBuilderPage> {
  final navigationIcons = [
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.home,
    Icons.person,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
    Icons.account_box,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example GridView.builder() Page"),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        padding: EdgeInsets.all(4),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            childAspectRatio: 3 / 4),
        itemCount: navigationIcons.length,
        itemBuilder: (context, index) {
          return Container(
            color: index % 2 == 0 ? Colors.green : Colors.blue,
            child: Center(child: Icon(navigationIcons[index])),
          );
        },
      ),
    );
  }
}
