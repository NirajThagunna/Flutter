import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Table',
      theme: ThemeData(

      ),
      home: TableApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TableApp extends StatefulWidget {
  const TableApp({Key? key}) : super(key: key);

  @override
  _TableAppState createState() => _TableAppState();
}

class _TableAppState extends State<TableApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Table'),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(120.0),
          border: TableBorder.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 2,
          ),
          children: [
            TableRow(
                children: [
                  Column(children: [Text('Name', textScaleFactor: 1.5,)],),
                  Column(children: [Text('Address', textScaleFactor: 1.5,)],),
                  Column(children: [Text('Phone Number', textScaleFactor: 1.5,)],)
                ]
            ),
            TableRow(
                children: [
                  Column(children: [Text('Niraj', textScaleFactor: 1.5,)],),
                  Column(children: [Text('Nepal', textScaleFactor: 1.5,)],),
                  Column(children: [Text('12345', textScaleFactor: 1.5,)],)
                ]
            ),
            TableRow(
                children: [
                  Column(children: [Text('Nismita', textScaleFactor: 1.5,)],),
                  Column(children: [Text('Nepal', textScaleFactor: 1.5,)],),
                  Column(children: [Text('67890', textScaleFactor: 1.5,)],)
                ]
            )
          ],
        ),
      ),
    );
  }
}