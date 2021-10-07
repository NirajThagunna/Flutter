// all the types of button
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic Form",
      theme: ThemeData(
        // primarySwatch: Colors.lime,
      ),
      home: ButtonsApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ButtonsApp extends StatefulWidget {
  @override
  _ButtonsAppState createState() => _ButtonsAppState();
}

class _ButtonsAppState extends State<ButtonsApp> {
  String msg = "Sometimes I can change myself";
  var txt = "Not Clicked Yet!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Buttons'),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: Icon(Icons.home),
          tooltip: "Home",
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.message)),
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: TextButton(
                child: Text("Sign up", style: TextStyle(fontSize: 20, color: Colors.white),),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: (){},
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(msg, style: TextStyle(fontSize: 20, color: Colors.red),),
            ),
            Container(
              child: ElevatedButton(
                child: Text("Click Me!", style: TextStyle(fontSize: 20, color: Colors.white),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: _changeText,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // OulineButton
            Container(
              child: OutlinedButton(
                child: Text("Outlined Button", textScaleFactor: 1.2,),
                onPressed: (){
                  txt = "Outlined Button is Called!";
                },
                ),
              ),
            Text("$txt", textScaleFactor: 2,),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.navigation),
      //   backgroundColor: Colors.green,
      //   foregroundColor: Colors.white,
      //   onPressed: (){},
      // ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.navigation),
        label: Text("Dir"),
        tooltip: "Save",
        onPressed: (){},
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg.startsWith("S")) {
        msg = "I have changed!";
      }
      else {
        msg = "Sometimes I can change myself";
      }
    });
  }
}
