import 'package:flutter/material.dart';

class ExampleListSeparatedPage extends StatefulWidget {
  const ExampleListSeparatedPage({super.key});

  @override
  State<ExampleListSeparatedPage> createState() =>
      _ExampleListSeparatedPageState();
}

class _ExampleListSeparatedPageState extends State<ExampleListSeparatedPage> {
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

  final footballClubs = [
    "FC Barcelona",
    "Real Madrid",
    "Paris Saint-Germain",
    "Liverpool",
    "Manchester City",
    "Bayern Munich",
    "Chelsea",
    "Manchester United",
    "Arsenal",
    "AC Milan",
    "Inter Milan",
    "Juventus",
    "Atletico Madrid",
    "Borussia Dortmund",
    "Tottenham Hotspur",
    "AS Roma",
    "Napoli",
    "Lazio",
    "Valencia",
    "Sevilla",
    "Villarreal",
    "Real Betis",
    "Real Sociedad",
    "Athletic Bilbao",
    "Ajax",
    "PSV Eindhoven",
    "Feyenoord",
    "AZ Alkmaar",
    "FC Porto",
    "Benfica",
    "Sporting CP",
    "FC Basel",
    "Galatasaray",
    "Fenerbahce",
    "Besiktas",
    "Shakhtar Donetsk",
    "Zenit St. Petersburg",
    "CSKA Moscow",
    "Spartak Moscow",
    "Celtic",
    "Rangers",
    "FC Copenhagen",
    "Brondby",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example ListView.builder() Page"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: footballPlayers.length,
        separatorBuilder: (context, index) {
          return Divider(height: 1);
        },
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
