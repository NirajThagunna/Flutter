import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClipRReact",
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: ClipRRectApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ClipRRectApp extends StatefulWidget {
  @override
  _ClipRRectAppState createState() => _ClipRRectAppState();
}

class _ClipRRectAppState extends State<ClipRRectApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipRRect"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Menu",
          onPressed: (){},
        ),
      ),
      body: Center(
        child: Tooltip(
          message: "Text",
          child: Text('Tooltip here!', textScaleFactor: 1.5,),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
