import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Table Widget'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Text("Table", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Table(
              defaultColumnWidth: FixedColumnWidth(130.5),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(
                color: Colors.red,
                width: 5,
                style: BorderStyle.solid,
              ),
              children: [
                TableRow(
                  children: [
                    // Text("Name", textScaleFactor: 1.5,),
                    Column(children:[Text('Name', textScaleFactor: 1.5,)]),
                    Column(children: [Text('Email I\'d', textScaleFactor: 1.5,),],),
                    Column(children: [Text('Phone Number', textScaleFactor: 1.5,),],),
                    // Text("Email", textScaleFactor: 1.5,),
                    // Text("Phone Number", textScaleFactor: 1.5,),
                  ]
                ),
                TableRow(
                  children: [
                    Text("Niraj Thagunna", textScaleFactor: 1.5,),
                    Text("nt@gmail.com", textScaleFactor: 1.5,),
                    Text("12345", textScaleFactor: 1.5,),
                  ]
                ),
                TableRow(
                    children: [
                      Text("Niraj", textScaleFactor: 1.5,),
                      Text("nt@gmail.com", textScaleFactor: 1.5,),
                      Text("1234501", textScaleFactor: 1.5,),
                    ]
                ),
                TableRow(
                    children: [
                      Text("Albert", textScaleFactor: 1.5,),
                      Text("albert@gmail.com", textScaleFactor: 1.5,),
                      Text("012345", textScaleFactor: 1.5,),
                    ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
