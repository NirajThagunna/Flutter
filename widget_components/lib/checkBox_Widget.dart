import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CheckBox Widget",
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
        title: Text('CheckBox Widget'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text('Select one of your fav: ', textScaleFactor: 1.5,),
                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: this.firstValue,
                  onChanged: (bool? value) {
                    setState(() {
                      print(value);
                      this.firstValue = value!;
                    });
                  },
                ),
                Checkbox(
                  value: this.secondValue,
                  onChanged: (bool? value) {
                    setState(() {
                      print(value);
                      this.secondValue = value!;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}



