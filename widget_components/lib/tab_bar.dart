import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TabBar Widget",
      home: Scaffold(
        body: TabBarApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TabBarApp extends StatefulWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  _TabBarAppState createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Widget'),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.contacts, size: 20,),
                text: 'Tab1',
              ),
              Tab(
                icon: Icon(Icons.camera_alt, size: 20,),
                text: 'Tab2',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("I am the first tab screen. Thanks for opening me!",
            style: TextStyle(color: Colors.red, fontSize: 30, fontStyle: FontStyle.italic),),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("I am the first tab screen. Thanks for opening me!",
            style: TextStyle(color: Colors.red, fontSize: 30, fontStyle: FontStyle.italic),),
        ),
      ),
    );
  }
}

