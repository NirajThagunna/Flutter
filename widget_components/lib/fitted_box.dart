import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ClipRReact",
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: FittedBoxApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FittedBoxApp extends StatefulWidget {
  @override
  _FittedBoxAppState createState() => _FittedBoxAppState();
}

class _FittedBoxAppState extends State<FittedBoxApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitted Box"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            // Without FittedBox
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.teal),
              ),
              child: Text("I'm a FittedBox Here!"),
              height: 20,
              width: 80,
            ),

            SizedBox(
              height: 20,
            ),

            // With FittedBox
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.lightBlue),
              ),
              child: FittedBox(
                child: Text("I'm a FittedBox Here!"),
              ),
              width: 80,
              height: 20,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(20.0),
              child: Text("Constraints Widget", style: TextStyle(fontSize: 25, color: Colors.purpleAccent),),

              constraints: BoxConstraints(
                minHeight: 50,
                minWidth: 50,
                maxWidth: 300,
                maxHeight: 100,
              ),
              transform: Matrix4.rotationZ(0.1),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Hello, I am a Text and you can write me anything!",
              style: TextStyle(
                color: Colors.black38,
                fontSize: 30,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                wordSpacing: 5,
                backgroundColor: Colors.black38,
                shadows: [
                  Shadow(color: Colors.purpleAccent,
                    offset: Offset(3, 3),
                    blurRadius: 10,)
                ]
              ),
            ),
            // RichText
            SizedBox(
              height: 50,
            ),
            Container(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(
                    color: Colors.black, fontSize: 18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Sign up",
                      style: TextStyle(
                        color: Colors.blueAccent, fontSize: 18,
                      ),
                      recognizer: TapGestureRecognizer(),
                    )
                  ]
                )
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // Code for to add an icon in between the text
            Container(
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyText1,
                  children: [
                    TextSpan(
                      text: "Click ",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(Icons.add, size: 20, color: Colors.red,),
                      ),
                    ),
                    TextSpan(
                      text: ' to add',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                      )
                    )
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
