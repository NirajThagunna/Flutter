import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: MyApp(),
    )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _volumeIncrease = 0;
  int _volume = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Button"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              icon: Icon(Icons.volume_up),
              iconSize: 50,
              color: Colors.brown,
              tooltip: 'Increase volume by 10',
              onPressed: () {
                setState(() {
                  _volumeIncrease += 10;
                });
              },
            ),
            Text("Your volume level is $_volumeIncrease", textScaleFactor: 2,),
            SizedBox(
              height: 50,
            ),
            InkWell(
              splashColor: Colors.red,
              highlightColor: Colors.tealAccent,
              child: Icon(Icons.ring_volume, size: 50,),
              onTap: (){
                setState(() {
                  _volume += 2;
                });
              },
              hoverColor: Colors.lightBlue,
            ),
            Text("Volume Level: $_volume", textScaleFactor: 2,),
          ],
        ),
      ),
    );
  }
}
