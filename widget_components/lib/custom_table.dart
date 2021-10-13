import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Table',
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
        title: Text('Custom Table'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text('Custom Table', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          DataTable(
            columns: [
              DataColumn(
                label: Text('ID', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
              ),
              DataColumn(
                  label: Text('Name', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
              ),
              DataColumn(
                  label: Text('Roll No.', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),)
              )
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Niraj')),
                  DataCell(Text('80')),
                ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text('2')),
                    DataCell(Text('Niru')),
                    DataCell(Text('81')),
                  ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text('3')),
                    DataCell(Text('Nismata')),
                    DataCell(Text('70')),
                  ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text('4')),
                    DataCell(Text('Nia')),
                    DataCell(Text('90')),
                  ]
              )
            ],
          )
        ],
      )
    );
  }
}