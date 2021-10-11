import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RadioButton Widget",
      home: Scaffold(
        body: LinearProgressBarApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LinearProgressBarApp extends StatefulWidget {
  const LinearProgressBarApp({Key? key}) : super(key: key);

  @override
  _LinearProgressBarAppState createState() => _LinearProgressBarAppState();
}

class _LinearProgressBarAppState extends State<LinearProgressBarApp> {
  late bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indeterminate Linear Progress bar'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: _loading ? LinearProgressIndicator() : Text(
            'Press a button for downloading!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cloud_download),
        onPressed: (){
          setState(() {
            _loading = !_loading;
          });
        },
      ),
    );
  }
}

