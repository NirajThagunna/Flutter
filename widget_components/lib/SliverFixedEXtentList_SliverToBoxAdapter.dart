import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sliver List",
      home: Scaffold(
        body: SliverListApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SliverListApp extends StatefulWidget {
  @override
  _SliverListAppState createState() => _SliverListAppState();
}

class _SliverListAppState extends State<SliverListApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              Icon(Icons.settings, size: 35,),
            ],
            // title: Text("Sliver List App"),
            leading: IconButton(
              icon: Icon(Icons.home, size: 35,),
              tooltip: "Home Icon",
              onPressed: (){},
            ),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Flexible Space Content",),
              background: Image.network("https://whatismyipaddress.com/wp-content/uploads/another-hacker-in-a-hoodie-1024x683.jpg",
                fit: BoxFit.cover,),
            ),
            expandedHeight: 250,
            snap: true,
            pinned: true,
            floating: true,
          ),
          SliverFixedExtentList(
            itemExtent: 85,
            delegate: SliverChildListDelegate([
              Container(color: Colors.teal,),
              Container(color: Colors.lime,),
              Container(color: Colors.lightBlue,),
            ]),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.black87,
              padding: EdgeInsets.all(30.0),
              child: Text('SliverToBoxAdapter', textScaleFactor: 2,
                  style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
