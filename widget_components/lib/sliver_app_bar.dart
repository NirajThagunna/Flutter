import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sliver App Bar",
      home: Scaffold(
        body: SliverAppBarWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SliverAppBarWidget extends StatefulWidget {
  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: true,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Sliver App Bar", style: TextStyle(color: Colors.white,), textScaleFactor: 1.5,),
              background: Image.network('https://academy.avast.com/hubfs/New_Avast_Academy/Hackers/Hacker-Hero.jpg',
                fit: BoxFit.cover,),

            ),
            expandedHeight: 250,
            backgroundColor: Colors.greenAccent[400],
            leading: IconButton(
              icon: Icon(Icons.home),
              tooltip: "Home Menu",
              onPressed: (){},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.comment),
                tooltip: "Comment",
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.settings),
                tooltip: "Settings",
                onPressed: (){},
              )
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                  tileColor: (index % 2 == 0) ? Colors.white : Colors.green[50],
                  title: Center(
                    child: Text('$index', style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 50,
                        color: Colors.greenAccent[400]),),
                  ),
                ),
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
