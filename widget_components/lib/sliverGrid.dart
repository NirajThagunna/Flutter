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
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return new Container(
                color: _randomColorPick(index),
                height: 150.0,
              );
            }
            ),
          ),
        ],
      ),
    );
  }
}

Color _randomColorPick(int index) {
  if (index % 3 == 0)
    return Colors.tealAccent;
  else if (index % 3 == 1)
    return Colors.black87;
  else
    return Colors.red;
}
