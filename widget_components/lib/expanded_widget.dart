import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expended Component"),
        backgroundColor: Colors.lightBlueAccent[200],
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Menu Bar",
          onPressed: (){},
        ),
        elevation: 100.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text("First", style: TextStyle(fontSize: 30, color: Colors.white),),
              ),
              color: Colors.green,
              width: 200,
              height: 150,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text("Second", style: TextStyle(fontSize: 30, color: Colors.white),),
                ),
                color: Colors.lightBlue,
                width: 200,
              ),
            ),
            Container(
              child: Center(
                child: Text("Third", style: TextStyle(fontSize: 30, color: Colors.white),),
              ),
              color: Colors.green,
              width: 200,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
