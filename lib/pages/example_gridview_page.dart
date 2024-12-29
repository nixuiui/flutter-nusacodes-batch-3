import 'package:flutter/material.dart';

class ExampleGridviewPage extends StatefulWidget {
  const ExampleGridviewPage({super.key});

  @override
  State<ExampleGridviewPage> createState() => _ExampleGridviewPageState();
}

class _ExampleGridviewPageState extends State<ExampleGridviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example GridView Page"),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.green,
            padding: EdgeInsets.all(16),
            child: Center(child: Text("This area can be scrolled")),
          ),
          GridView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.all(4),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: 3 / 4),
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
    );
  }
}
