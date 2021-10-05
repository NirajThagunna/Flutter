import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter",
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        body: BodyWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget"),
        backgroundColor: Colors.lightBlueAccent[200],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Menu Bar",
          onPressed: (){},
        ),
        elevation: 100.0,
      ),
      body: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing:10.0,
        runAlignment:WrapAlignment.center,
        runSpacing: 10.0,
        crossAxisAlignment: WrapCrossAlignment.center,
        // textDirection: TextDirection.rtl,
        // verticalDirection: VerticalDirection.up,
        children: <Widget>[
          Container(
            child: Text("First", style: TextStyle(fontSize: 30, color: Colors.white),),
            color: Colors.green,
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          ),
          Container(
            child: Text("Second", style: TextStyle(fontSize: 30, color: Colors.white),),
            color: Colors.lightBlue,
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text("Third", style: TextStyle(fontSize: 30, color: Colors.white),),
            color: Colors.indigo,
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text("Fourth", style: TextStyle(fontSize: 30, color: Colors.white),),
            color: Colors.teal,
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text("Fifth", style: TextStyle(fontSize: 30, color: Colors.white),),
            color: Colors.cyanAccent,
            padding: EdgeInsets.all(20.0),
          ),
          Container(
            child: Text("Sixth", style: TextStyle(fontSize: 30, color: Colors.white),),
            color: Colors.green,
            padding: EdgeInsets.all(20.0),
          ),
        ],
      ),
    );
  }
}
