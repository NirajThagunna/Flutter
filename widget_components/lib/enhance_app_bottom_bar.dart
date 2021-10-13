import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(

      ),
      home: BottomNavigationBarApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarAppState createState() => _BottomNavigationBarAppState();
}

class _BottomNavigationBarAppState extends State<BottomNavigationBarApp> {
  int _selectedItemIndex = 0;

  // Creating a list of widgets
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35,),),
    Text('Search Page', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35,),),
    Text('About Page', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35,),),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Charts App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedItemIndex),
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.flip,
        backgroundColor: Colors.blueAccent[50],
        color: Colors.white,
        items: [
          TabItem(
            icon: Icon(Icons.home, size: 30,),
            title: 'Home',
          ),
          TabItem(
            icon: Icon(Icons.search, size: 30,),
            title: 'Search',
          ),
          TabItem(
            icon: Icon(Icons.info, size: 30,),
            title: 'Info',
          )
        ],
        initialActiveIndex: 1,
        onTap: _onItemTapped,
      ),
    );
  }
}