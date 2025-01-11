import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ExampleHivePage extends StatefulWidget {
  const ExampleHivePage({super.key});

  @override
  State<ExampleHivePage> createState() => _ExampleHivePageState();
}

class _ExampleHivePageState extends State<ExampleHivePage> {

  var box = Get.find<Box>();
  var text = '';

  void saveData() async {
    await box.put('date', DateTime.now().toIso8601String());
    getData();
  }

  void getData() {
    setState(() {
      text = box.get('date') ?? '';
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => saveData(),
        child: Icon(Icons.edit),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 40
              ),
            ),
          ],
        ),
      ),
    );
  }
}