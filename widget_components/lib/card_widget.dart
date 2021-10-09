import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card Widget",
      home: Scaffold(
        body: CardWidgetApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CardWidgetApp extends StatefulWidget {
  const CardWidgetApp({Key? key}) : super(key: key);

  @override
  _CardWidgetAppState createState() => _CardWidgetAppState();
}

class _CardWidgetAppState extends State<CardWidgetApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 350,
          padding: EdgeInsets.all(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.red,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 70,),
                  title: Text('Niraj Thagunna', textScaleFactor: 1.5,),
                  subtitle: Text('Give me some sunshine', textScaleFactor: 1.5,),
                ),
                ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      child: Text('Play'),
                      onPressed: (){},
                    ),
                    ElevatedButton(onPressed: (){}, child: Text('Pause')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

