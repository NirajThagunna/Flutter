import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forms',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: BasicAlertApp(),
    );
  }
}

class BasicAlertApp extends StatefulWidget {
  const BasicAlertApp({Key? key}) : super(key: key);

  @override
  _BasicAlertAppState createState() => _BasicAlertAppState();
}

class _BasicAlertAppState extends State<BasicAlertApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Alert Dialog"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: ElevatedButton(
          child: Text("Click Me!", style: TextStyle(fontSize: 20),),
          onPressed: () => showAlertDialogBox(context),
        ),
      ),
    );
  }

  void showAlertDialogBox(BuildContext context) {

    // Creating an OK button
    Widget okButton = TextButton(
      child: Text("Ok", textScaleFactor: 1.2,),
      onPressed: (){
        Navigator.of(context).pop();
      },
    );

    // Creating a dialog box
    AlertDialog alert = AlertDialog(
      title: Text("Basic Alert Dialog Box"),
      content: Text('This is me Simple alert dialog box!'),
      actions: [
        okButton,
      ],
    );

    // Showing the dialog box
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
    );
  }
}

