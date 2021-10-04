import 'package:flutter/material.dart';

void main() {
  runApp(SafeArea());
}

class SafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      home: SafeAreaContent(title: "Safe Area Content"),
      debugShowCheckedModeBanner: false,
    );
  }
}