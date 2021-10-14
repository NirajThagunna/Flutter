import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _launchUrl = 'https://www.google.com';

  Future<void> _launchInBrowser(String url) async {
    // if (await canLaunch(url))

    {
      await launch(
          url,



      );
    }
    // else {
    //   throw 'Could not find the $url';
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('URLs Launcher'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250.0,
                ),
                Text(
                  'Welcome to Flutter World!',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text('Open in Browser',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: (){
                    _launchInBrowser(_launchUrl);
                  },
                ),
                Container(
                  height: 20.0,
                ),
                // ElevatedButton(
                //   child: Text('Open in App',
                //     style: TextStyle(
                //       color: Colors.white,
                //     ),
                //   ),
                //   onPressed: _launchURLApp,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



