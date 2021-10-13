import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HeroAnimationApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HeroAnimationApp extends StatefulWidget {
  const HeroAnimationApp({Key? key}) : super(key: key);

  @override
  _HeroAnimationAppState createState() => _HeroAnimationAppState();
}

class _HeroAnimationAppState extends State<HeroAnimationApp> {
  Widget _greenRectangle(){
    return Container(
      height: 75,
      width: 75,
      color: Colors.green,
    );
  }

  Widget _detailsPageRectangle() {
    return Container(
      height: 150,
      width: 150,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: buildHeroWidget(context),
    );
  }

  Widget buildHeroWidget(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          ListTile(
            leading: GestureDetector(
              child: Hero(
                tag: 'hero-rectangle',
                child: _greenRectangle(),
              ),
              onTap: () => _gotoDetailsPage(context),
            ),
            title: Text('Tap on the green box to see the animation!'),
          )
        ],
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child: _detailsPageRectangle(),
              ),
              Text('This is the place where you can see the output results!',
              style: TextStyle(fontSize: 16),),
            ],
          ),
        ),
      )
    ));
  }
}


