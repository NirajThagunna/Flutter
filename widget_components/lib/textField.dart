// Program to create a simple basic form
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
      home: TextFieldApp(title: 'TextField App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextFieldApp extends StatefulWidget {
  final String title;

  TextFieldApp({Key key, this.title}) : super(key: key);

  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Form"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter username',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                obscureText: true,
                maxLength: 12,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                    borderSide: BorderSide(width: 2, color: Colors.green),
                  ),
                  labelText: "Password",
                  hintText: "Enter Password",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(width: 2),
                  ),
                  labelText: "Message",
                  hintText: "Leave any message here!",
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Submit", style: TextStyle(color: Colors.white,),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
