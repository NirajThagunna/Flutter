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
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
            backgroundColor: Colors.blue,
          )
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedItemIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        selectedFontSize: 20.0,
        // onTap: (index) => _onItemTapped(index),
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}