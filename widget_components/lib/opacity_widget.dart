import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BodyWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BodyWidget extends StatefulWidget {
  @override
  _OpacityWidget createState() => _OpacityWidget();
}

class _OpacityWidget extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text("First", style: TextStyle(fontSize: 30),),
            color: Colors.blue,
            padding: EdgeInsets.all(50),
          ),
          Opacity(
            opacity: 0,
            child: Container(
              child: Text("Second", style: TextStyle(fontSize: 30),),
              color: Colors.green,
              padding: EdgeInsets.all(50),
            ),
          ),
          AnimatedOpacity(
            opacity: 0.4,
            duration: Duration(seconds: 1),
            child: Container(
              child: Text("Second", style: TextStyle(fontSize: 30),),
              color: Colors.green,
              padding: EdgeInsets.all(50),
            ),
          ),
          Container(
            child: Text("Third", style: TextStyle(fontSize: 30),),
            color: Colors.blue,
            padding: EdgeInsets.all(50),
          )
        ],
      )
    );
  }
}
