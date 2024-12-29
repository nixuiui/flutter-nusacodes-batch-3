import 'package:flutter/material.dart';

class ExampleButtonPage extends StatelessWidget {
  const ExampleButtonPage({super.key});

  void showBasicDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Basic Dialog"),
            content: Text("This is a basic dialog"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              ),
            ],
          );
        });
  }

  void showFullscreenDialog(BuildContext context) {
    showDialog(
        context: context,
        useSafeArea: false,
        builder: (context) {
          return Dialog.fullscreen(
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                title: Text("Fullscreen Dialog"),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Button Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              print("Icon button clicked");
            },
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 16,
              children: [
                IconButton.outlined(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    print("Icon button clicked");
                  },
                ),
                IconButton.filled(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    print("Icon button clicked");
                  },
                ),
                IconButton.filledTonal(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    print("Icon button clicked");
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => showBasicDialog(context),
              iconAlignment: IconAlignment.end,
              child: Text("Open Alert Dialog"),
            ),
            FilledButton.icon(
              onPressed: () => showFullscreenDialog(context),
              iconAlignment: IconAlignment.end,
              icon: Icon(Icons.add),
              label: Text("Open Fullscreen Dialog"),
            ),
            FilledButton.tonalIcon(
              onPressed: () {
                print("Button clicked");
              },
              iconAlignment: IconAlignment.end,
              icon: Icon(Icons.add),
              label: Text("Click me"),
            ),
            GestureDetector(
                onTap: () {
                  print("You can click me");
                },
                onDoubleTap: () {
                  print("You can double tap me");
                },
                onLongPress: () {
                  print("You can long press me");
                },
                child: Text("You can click me")),
            InkWell(
                onTap: () {
                  print("You can click me");
                },
                onDoubleTap: () {
                  print("You can double tap me");
                },
                onLongPress: () {
                  print("You can long press me");
                },
                child: Text("You can click me"))
          ],
        ),
      ),
    );
  }
}
