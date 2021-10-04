import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Components',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Widget Components'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _WidgetComponents createState() => _WidgetComponents();
}

class _WidgetComponents extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              tooltip: "Shopping Cart",
              onPressed: (){},
          ),
          IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Menu Bar",
              onPressed: (){},
          )
        ],
        leading: IconButton(
          icon: Icon(Icons.home),
          tooltip: "Home Menu",
          onPressed: (){},
        ),
        elevation: 50.0,
        brightness: Brightness.dark,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        height: 300,
        width: double.infinity,
        // you can't give the color and border color at the same time that will trow an error
        // color: Colors.lightGreenAccent,
        margin: EdgeInsets.fromLTRB(20.4, 25.1, 20.5, 10.6),
        padding: EdgeInsets.all(25),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 10,),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        transform: Matrix4.rotationZ(0.1),
        child: Text("Waiting for a magical moment! - Container Constructor",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        onPressed: () {

        },
      ),
    );
  }
}

