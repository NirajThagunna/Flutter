import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenu Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: PopupMenuButtonApp(),
    );
  }
}

class PopupMenuButtonApp extends StatefulWidget {
  @override
  _PopupMenuButtonAppState createState() => _PopupMenuButtonAppState();
}

// Choice class
class Choice {
  final String name;
  final IconData icon;

  const Choice({required this.name, required this.icon});
}

const List<Choice> choices = const <Choice>[
  const Choice(name: 'Wi-Fi', icon: Icons.wifi),
  const Choice(name: 'Bluetooth', icon: Icons.bluetooth),
  const Choice(name: "Battery", icon: Icons.battery_alert),
  const Choice(name: 'Storage', icon: Icons.storage),
];

class _PopupMenuButtonAppState extends State<PopupMenuButtonApp> {
  Choice _selectedOption = choices[0];

  void _select(Choice choice) {
    setState(() {
      _selectedOption = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenu Button'),
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.skip(0).map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.name),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ChoiceCard(choice: _selectedOption),
      ),
    );
  }
}

class ChoiceCard extends StatelessWidget {
  final Choice choice;

  const ChoiceCard({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline3;
    return Card(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 130, color: textStyle!.color,),
            Text(choice.name, style: textStyle,)
          ],
        ),
      ),
    );
  }
}
