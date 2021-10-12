import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Determinate Circular Progress Bar",
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: CircularProgressBar(title: 'Determinate Circular Progress Bar'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CircularProgressBar extends StatefulWidget {
  final String title;

  const CircularProgressBar({Key? key, required this.title}) : super(key: key);

  @override
  _CircularProgressBarState createState() => _CircularProgressBarState();
}

class _CircularProgressBarState extends State<CircularProgressBar> {
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
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: _loading ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                backgroundColor: Colors.cyanAccent,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                strokeWidth: 10,
                value: _progressValue,
              ),
              SizedBox(
                height: 10,
              ),
              Text('${(_progressValue * 100).round()}%'),
            ],
          ) : Text('Press the button for downloading!', textScaleFactor: 1.5,),
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
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;
      });

      // finishing the download
      if (_progressValue.toStringAsFixed(1) == '1.0') {
        _loading = false;
        _progressValue = 0.0;
        t.cancel();
        return;
      }
    });
  }
}

