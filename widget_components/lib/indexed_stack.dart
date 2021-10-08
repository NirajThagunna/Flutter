import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStackWidget(),
    );
  }
}

class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Stack Widget"),
          ),
        body: Center(
          child: IndexedStack(
            // IndexedStack will change the screen acc to the index number
            index: 0,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                height: 300,
                width: 400,
                color: Colors.greenAccent,
                child: Center(
                  child: Text(
                    'First Screen',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                height: 200,
                width: 250,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'Second Screen',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}