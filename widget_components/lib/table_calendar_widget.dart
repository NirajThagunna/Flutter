import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Calendar',
      theme: ThemeData(

      ),
      home: TableCalendarApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TableCalendarApp extends StatefulWidget {
  const TableCalendarApp({Key? key}) : super(key: key);

  @override
  _TableCalendarAppState createState() => _TableCalendarAppState();
}

class _TableCalendarAppState extends State<TableCalendarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Table'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            ],
          ),
        )
    );
  }
}