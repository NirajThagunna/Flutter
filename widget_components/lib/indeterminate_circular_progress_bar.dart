import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Indeterminate Circular Progress Bar",
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: CircularProgressBar(title: 'Indeterminate Circular Progress Bar'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CircularProgressBar extends StatefulWidget {
  final String title;

  const CircularProgressBar({Key? key, required this.title}) : super(key: key);

  @override
  _CircularProgressBarState createState() => _CircularProgressBarState();
}

class _CircularProgressBarState extends State<CircularProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.red,
            color: Colors.green,
            strokeWidth: 5.0,
          ),
        ),
      )
    );
  }
}

