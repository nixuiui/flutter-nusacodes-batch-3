import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  final int counter;
  final Function(int)? onTap;

  const CounterText({super.key, required this.counter, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Your pushed the button this many times:',
        ),
        GestureDetector(
          onTap: () => onTap?.call(counter + 2),
          child: Text(
            "$counter",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ],
    );
  }
}
