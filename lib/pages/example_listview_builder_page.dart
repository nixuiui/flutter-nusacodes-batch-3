import 'package:flutter/material.dart';

class ExampleListBuilderPage extends StatefulWidget {
  const ExampleListBuilderPage({super.key});

  @override
  State<ExampleListBuilderPage> createState() => _ExampleListBuilderPageState();
}

class _ExampleListBuilderPageState extends State<ExampleListBuilderPage> {
  final footballPlayers = [
    "Lionel Messi",
    "Cristiano Ronaldo",
    "Neymar Jr",
    "Kylian Mbappe",
    "Mohamed Salah",
    "Kevin De Bruyne",
    "Robert Lewandowski",
    "Sadio Mane",
    "Sergio Ramos",
    "Virgil van Dijk",
    "Kaka",
    "Puyol",
    "Zlatan Ibrahimovic",
    "David Beckham",
    "Ronaldinho",
    "Ronaldo",
    "Thierry Henry",
    "Andres Iniesta",
    "Xavi",
    "Steven Gerrard",
    "Frank Lampard",
    "Didier Drogba",
    "Wayne Rooney",
    "Paul Scholes",
    "Ryan Giggs",
    "Gianluigi Buffon",
    "Iker Casillas",
    "Manuel Neuer",
    "Edwin van der Sar",
    "Petr Cech",
    "Marc-Andre ter Stegen",
    "Alisson Becker",
    "Jan Oblak",
    "Keylor Navas",
    "Thibaut Courtois",
    "Hugo Lloris",
    "David de Gea",
    "Samir Handanovic",
    "Gianluigi Donnarumma",
    "Bernd Leno",
    "Kasper Schmeichel",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example ListView.builder() Page"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(footballPlayers[index]),
            subtitle: Text("Position: Forward"),
            leading: Icon(Icons.sports_soccer),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
