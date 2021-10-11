import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RadioButton Widget",
      home: Scaffold(
        body: RadioButtonApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RadioButtonApp extends StatefulWidget {
  const RadioButtonApp({Key? key}) : super(key: key);

  @override
  _RadioButtonAppState createState() => _RadioButtonAppState();
}

enum BestLang{
  Java,
  Python,
  Dart
}

class _RadioButtonAppState extends State<RadioButtonApp> {
  BestLang? _bestLang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioButton Widget'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Java'),
            leading: Radio(
              value: BestLang.Java,
              groupValue: _bestLang,
              onChanged: (BestLang? value) {
                setState(() {
                  _bestLang = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Python'),
            leading: Radio(
              value: BestLang.Python,
              groupValue: _bestLang,
              onChanged: (BestLang? value){
                setState(() {
                  _bestLang = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Dart'),
            leading: Radio(
              value: BestLang.Dart,
              groupValue: _bestLang,
              onChanged: (BestLang? value){
                setState(() {
                  _bestLang = value!;
                });
              },
            ),
          )
        ],
      )
    );
  }
}



