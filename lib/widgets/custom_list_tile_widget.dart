import 'package:flutter/material.dart';

class CustomerListTile extends StatelessWidget {
  const CustomerListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("footballPlayers[index]"),
      subtitle: Text("Position: Forward"),
      leading: Icon(Icons.sports_soccer),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
