import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confirmation Alert Dialog Box',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ConfirmationAlertDialogBox(),
    );
  }
}

class ConfirmationAlertDialogBox extends StatefulWidget {
  const ConfirmationAlertDialogBox({Key? key}) : super(key: key);

  @override
  _ConfirmationAlertDialogBoxState createState() => _ConfirmationAlertDialogBoxState();
}

class _ConfirmationAlertDialogBoxState extends State<ConfirmationAlertDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Option Alert Dialog Box'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                final SelectOption _option = await _asyncSelectOptionDialog(context);
                print("Selected Option is: $_option");
              },
              child: Text(
                'Show Alert',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(10.0)),
                  mouseCursor: MaterialStateProperty.all(MouseCursor.defer)),
            ),
          ],
        ),
      ),
    );
  }
}

enum SelectOption {
  Java,
  JavaScript,
  OOPs,
  Dart
}

Future _asyncSelectOptionDialog(BuildContext context) async {
  return await showDialog<SelectOption>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text('Select Your Favorite'),
        children: <Widget>[
          SimpleDialogOption(
            child: Text("Java"),
            onPressed: () {
              Navigator.pop(context, SelectOption.Java);
            },
          ),
          SimpleDialogOption(
            child: Text("JavaScript"),
            onPressed: () {
              Navigator.pop(context, SelectOption.JavaScript);
            },
          ),
          SimpleDialogOption(
            child: Text("OOPs"),
            onPressed: () {
              Navigator.pop(context, SelectOption.OOPs);
            },
          ),
          SimpleDialogOption(
            child: Text("Dart"),
            onPressed: () {
              Navigator.pop(context, SelectOption.Dart);
            },
          )
        ],
      );
    }
  );
}

