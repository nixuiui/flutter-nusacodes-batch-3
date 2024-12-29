import 'package:flutter/material.dart';

class ExampleExtendedPage extends StatefulWidget {
  const ExampleExtendedPage({super.key});

  @override
  State<ExampleExtendedPage> createState() => _ExampleExtendedPageState();
}

class _ExampleExtendedPageState extends State<ExampleExtendedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Extended Page"),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey[300],
          width: double.infinity,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                width: double.infinity,
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 100,
                          color: Colors.green,
                          child: Center(child: const Text("1"))),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          height: 100,
                          color: Colors.brown,
                          child: Center(child: const Text("1"))),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          height: 100,
                          color: Colors.orange,
                          child: Center(child: const Text("1"))),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.red,
                  width: double.infinity,
                  child: const Text("Container 1"),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  child: const Text("Container 1"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
