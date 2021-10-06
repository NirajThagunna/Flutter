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
      ),
      body: Center(
        child: ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.6,
            child: Image.asset('assets/images/Hacker-Thumb.jpg'),
          ),
        ),
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
