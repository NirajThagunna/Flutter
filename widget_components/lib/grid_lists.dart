import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid Lists",
      theme: ThemeData(
        // primarySwatch: Colors.lime,
      ),
      home: GridListsApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridListsApp extends StatelessWidget {
  const GridListsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Lists'),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        children: List.generate(choices.length, (index){
          return Card(
            child: SelectCard(choice: choices[index]),
          );
        }),
      ),
    );
  }
}

class Choice{
  final String title;
  final IconData icon;

  Choice({required this.title, required this.icon});
}

// Creating a List
final List<Choice> choices = <Choice>[
  Choice(title: "Home", icon: Icons.home),
  Choice(title: 'Contact', icon: Icons.contacts),
  Choice(title: 'Map', icon: Icons.map),
  Choice(title: 'Phone', icon: Icons.phone),
  Choice(title: 'Camera', icon: Icons.camera_alt),
  Choice(title: 'Settings', icon: Icons.settings),
  Choice(title: 'Album', icon: Icons.photo_album),
  Choice(title: 'WiFi', icon: Icons.wifi),
];

class SelectCard extends StatelessWidget {
  final Choice choice;

  const SelectCard({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Icon(choice.icon, size: 50, color: Colors.black,),),
            Text('${choice.title}', style: TextStyle(fontSize: 25),),
          ],
        ),
      ),
    );
  }
}


