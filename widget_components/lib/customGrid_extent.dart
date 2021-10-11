import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid View Extents",
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
        title: Text('GridView.extent()'),
        backgroundColor: Colors.blueAccent,
      ),
      body: GridView.extent(
        primary: false,
        padding: EdgeInsets.all(10.0),
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        maxCrossAxisExtent: 200.0,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("First"),
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("Second"),
            color: Colors.teal,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("Third"),
            color: Colors.blue,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("Fourth"),
            color: Colors.red,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("Fifth"),
            color: Colors.purple,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("Sixth"),
            color: Colors.lightBlue,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("Seventh"),
            color: Colors.purpleAccent,
          ),
        ],
      )
    );
  }
}