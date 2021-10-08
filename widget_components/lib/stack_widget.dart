import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopupMenu Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: StackApp(),
    );
  }
}

class StackApp extends StatefulWidget {
  @override
  _StackAppState createState() => _StackAppState();
}

class _StackAppState extends State<StackApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Widget"),
      ),
      body: Center(
        child: Stack(
          fit: StackFit.passthrough,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.5),
              color: Colors.green,
              height: 300,
              width: 400,
              child: Center(
                child: Text(
                  'Top Level Stack: Green',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 40,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.purple,
                child: Center(
                  child: Text(
                    'Second',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 40,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Third',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
