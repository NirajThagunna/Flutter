import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySliderApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySliderApp extends StatefulWidget {
  MySliderApp({Key? key}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider App'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(5.0),
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(
          height: 225,
        ),
      ),
    );
  }
}

