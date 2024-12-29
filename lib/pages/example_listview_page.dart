import 'package:flutter/material.dart';

class ExampleListViewPage extends StatefulWidget {
  const ExampleListViewPage({super.key});

  @override
  State<ExampleListViewPage> createState() => _ExampleListViewPageState();
}

class _ExampleListViewPageState extends State<ExampleListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example ListView Page"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.green,
            padding: EdgeInsets.all(16),
            child: Center(child: Text("This area can't be scrolled")),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildSubList(),
                _buildButtonList(),
                ListTile(
                  title: Text("List Item 6"),
                  subtitle: Text("Subtitle 6"),
                  leading: Icon(Icons.account_box),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("List Item 7"),
                  subtitle: Text("Subtitle 7"),
                  leading: Icon(Icons.account_circle),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("List Item 8"),
                  subtitle: Text("Subtitle 8"),
                  leading: Icon(Icons.account_tree),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("List Item 9"),
                  subtitle: Text("Subtitle 9"),
                  leading: Icon(Icons.ac_unit),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("List Item 10"),
                  subtitle: Text("Subtitle 10"),
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("List Item 11"),
                  subtitle: Text("Subtitle 11"),
                  leading: Icon(Icons.access_time),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                ListTile(
                  title: Text("List Item 12"),
                  subtitle: Text("Subtitle 12"),
                  leading: Icon(Icons.account_balance),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubList() {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: [
        ListTile(
          title: Text("List Item 1"),
          subtitle: Text("Subtitle 1"),
          leading: Icon(Icons.ac_unit),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          title: Text("List Item 2"),
          subtitle: Text("Subtitle 2"),
          leading: Icon(Icons.access_alarm),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          title: Text("List Item 3"),
          subtitle: Text("Subtitle 3"),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          title: Text("List Item 4"),
          subtitle: Text("Subtitle 4"),
          leading: Icon(Icons.account_balance),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          title: Text("List Item 5"),
          subtitle: Text("Subtitle 5"),
          leading: Icon(Icons.account_balance_wallet),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  Widget _buildButtonList() {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(Icons.chevron_left_rounded),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Center(
                  child: IconButton.outlined(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filled(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filledTonal(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.outlined(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filled(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filledTonal(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.outlined(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filled(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filledTonal(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.outlined(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filled(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filledTonal(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.outlined(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filled(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
                Center(
                  child: IconButton.filledTonal(
                    icon: Icon(Icons.home),
                    onPressed: () {
                      print("Icon button clicked");
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Icon(Icons.chevron_right_rounded),
          ),
        ],
      ),
    );
  }
}
