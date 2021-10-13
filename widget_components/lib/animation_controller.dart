import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnimationApp extends StatefulWidget {
  const AnimationApp({Key? key}) : super(key: key);

  @override
  _AnimationAppState createState() => _AnimationAppState();
}

class _AnimationAppState extends State<AnimationApp> with TickerProviderStateMixin {
  late Animation _startAnimation;
  late AnimationController _startAnimationController;

  bool toggle = false;

  // animation controller
  @override
  void initState() {
    super.initState();
    _startAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _startAnimation = Tween(begin: 140.0, end: 160.0).animate(CurvedAnimation(
      curve: Curves.elasticInOut,
      parent: _startAnimationController,
    ));

    _startAnimationController.addStatusListener((AnimationStatus status) {
      if(status == AnimationStatus.completed) {
        _startAnimationController.repeat();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _startAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Controller'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('AnimatedBuilder',
            style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 200,
              child: AnimatedBuilder(
                animation: _startAnimationController,
                builder: (context, child) {
                  return Center(
                    child: Container(
                      child: Center(
                        child: Icon(
                          Icons.audiotrack,
                          color: Colors.orangeAccent,
                          size: _startAnimation.value,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('START/ STOP'),
              onPressed: () {
                toggle = !toggle;
                toggle == true ? _startAnimationController.forward() : _startAnimationController.stop();
              },
            )
          ],
        ),
      ),
    );
  }
}


