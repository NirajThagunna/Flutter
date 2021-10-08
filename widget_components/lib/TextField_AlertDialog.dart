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
      home: TextFieldAlertDialogApp(),
    );
  }
}

class TextFieldAlertDialogApp extends StatefulWidget {
  const TextFieldAlertDialogApp({Key? key}) : super(key: key);

  @override
  _TextFieldAlertDialogAppState createState() => _TextFieldAlertDialogAppState();
}

class _TextFieldAlertDialogAppState extends State<TextFieldAlertDialogApp> {

  TextEditingController _textEditingController = TextEditingController();

  _displayDialogBox(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Alert with TextField"),
          content: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              hintText: 'Enter something here!',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Submit', textScaleFactor: 1.0,),
              onPressed: (){
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Alert Dialog App'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Me!', textScaleFactor: 1.2,),
          onPressed: () => _displayDialogBox(context),
        ),
      ),
    );
  }
}

