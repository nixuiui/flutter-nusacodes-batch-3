import 'package:flutter/material.dart';

class ExampleGridviewCountPage extends StatefulWidget {
  const ExampleGridviewCountPage({super.key});

  @override
  State<ExampleGridviewCountPage> createState() =>
      _ExampleGridviewCountPageState();
}

class _ExampleGridviewCountPageState extends State<ExampleGridviewCountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example GridView.count() Page"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.orange,
            padding: EdgeInsets.all(16),
            child: Center(child: Text("This area can't be scrolled")),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.green,
                  padding: EdgeInsets.all(16),
                  child: Center(child: Text("This area can be scrolled")),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  padding: EdgeInsets.all(4),
                  crossAxisCount: 5,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 3 / 4,
                  children: [
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.home)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.person)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.home)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.person)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.home)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.person)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.green,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Center(child: Icon(Icons.account_box)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
