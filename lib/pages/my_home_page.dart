import 'package:flutter/material.dart';
import 'package:nusacode_flutter_3/commons/extensions/context_extentions.dart';
import 'package:nusacode_flutter_3/commons/extensions/int_extensions.dart';
import 'package:nusacode_flutter_3/pages/bottom_navbar/bottom_navbar_page.dart';
import 'package:nusacode_flutter_3/widgets/counter_text_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter;
  String? footballPlayer;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    _counter = 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CounterText(
                counter: _counter,
                onTap: (newCounter) => setState(() {
                  _counter = newCounter;
                }),
              ),
              40.height,
              FilledButton(
                  onPressed: () {
                    context.push(const BottomNavbarPage());
                  },
                  child: Text("Bottom Navigation Bar")),
              FilledButton(
                  onPressed: () {
                    context.pushNamed('/example-button');
                  },
                  child: Text("Example Button Page")),
              FilledButton(
                  onPressed: openFootballPlayersPage,
                  child: Text("Footbal Players: $footballPlayer")),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ));
  }

  void openFootballPlayersPage() async {
    final result =
        await context.pushNamed('/football-player', arguments: footballPlayer);

    if (result != null) {
      setState(() {
        footballPlayer = result as String;
      });
    }
  }
}
