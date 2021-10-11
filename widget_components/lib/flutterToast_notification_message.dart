import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid View Extents",
      theme: ThemeData(
        // primarySwatch: Colors.lime,
      ),
      home: GridListsApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GridListsApp extends StatelessWidget {
  const GridListsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterToast Notification Message'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: ElevatedButton(
            child: Text("Click Me!"),
            onPressed: showToastMsg,
          ),
        ),
      ),
    );
  }

  void showToastMsg() {
    Fluttertoast.showToast(
      msg: "This is me flutter toast notification!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.yellow,
    );
  }
}