import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySliderApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MySliderApp extends StatefulWidget {
  MySliderApp({Key? key}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  int _value = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider App Demo'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.volume_up,
                size: 50,
              ),
              Expanded(
                child: Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  divisions: 10,
                  activeColor: Colors.green,
                  inactiveColor: Colors.orange,
                  label: 'Set volume level',
                  onChanged: (double newValue) {
                    setState(() {
                      print('$newValue');
                      _value = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

