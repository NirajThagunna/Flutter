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
      home: HorizontalList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Bar"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 120,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 148.0,
              child: Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blueAccent,
              width: 148.0,
              child: Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.account_balance_outlined),
                    title: Text("About"),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              width: 160.0,
              child: Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text("Message"),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.teal,
              width: 160.0,
              child: Stack(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.comment),
                    title: Text("Comment"),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

