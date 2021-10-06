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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset('assets/images/Hacker-Thumb.jpg', height: 150,),
        ),
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect> {
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, 100, 100);
  }

  bool shouldReclip(oldClipper) {
    return false;
  }
}
