import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Determinate Linear Progress Bar Widget",
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
  late double _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Determinate Linear Progress Bar'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: _loading ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LinearProgressIndicator(
                backgroundColor: Colors.cyanAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progressValue,
              ),
              Text('${(_progressValue * 100).round()}%'),
            ],
          ) : Text('Press the button for downloading!', style: TextStyle(fontSize: 20),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cloud_download),
        tooltip: 'Download',
        onPressed: (){
          setState(() {
            _loading = !_loading;
            _updateProgress();
          });
        },
      ),
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;

        // finishing downloading
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          _progressValue = 0.0;
          t.cancel();
          return;
        }
      });
    });
  }
}

