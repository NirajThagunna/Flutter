import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CheckBoxListTile Widget",
      home: Scaffold(
        body: CheckBoxApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CheckBoxApp extends StatefulWidget {
  const CheckBoxApp({Key? key}) : super(key: key);

  @override
  _CheckBoxAppState createState() => _CheckBoxAppState();
}

class _CheckBoxAppState extends State<CheckBoxApp> {
  bool firstValue = false;
  bool secondValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxListTile Widget'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(26.5),
        child: Column(
          children: <Widget>[
            Text('Checkbox with Header and Subtitle', textScaleFactor: 1.5,),
            CheckboxListTile(
              secondary: Icon(Icons.alarm),
              title: Text('Ringing at 4:30 AM every day'),
              subtitle: Text('Ringing after 12 hours'),
              value: this.firstValue,

              onChanged: (bool? value){
                setState(() {
                  this.firstValue = value!;
                });
              },
            ),
            CheckboxListTile(
              secondary: Icon(Icons.alarm),
              title: Text('Ringing at 5:00 AM every day'),
              subtitle: Text('Ringing after 12 hours'),
              value: this.secondValue,
              onChanged: (bool? value){
                setState(() {
                  this.secondValue = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}



