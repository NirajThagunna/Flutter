import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Lists",
      theme: ThemeData(
        // primarySwatch: Colors.lime,
      ),
      home: BasicListsApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BasicListsApp extends StatelessWidget {
  const BasicListsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Lists"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.facebook_outlined),
            title: Text('Facebook'),
          ),
          ListTile(
            leading: Icon(Icons.youtube_searched_for_outlined),
            title: Text('YouTube'),
          ),
          ListTile(
            leading: Icon(Icons.g_mobiledata_outlined),
            title: Text('Let me check it!'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text('Account to be here!'),
          )
        ],
      ),
    );
  }
}


