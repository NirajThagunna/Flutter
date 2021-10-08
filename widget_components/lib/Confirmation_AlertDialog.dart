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
        title: Text('Confirmation Alert Dialog Box'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                await _asyncConfirmDialog(context);
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

// user-defined constants data
enum ConfirmAction{
  Cancel,
  Accept
}

Future _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false, // user must have to click on some button to come from the alert box
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Want to Delete?"),
        content: Text('This will delete permanently.'),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.Cancel);
            },
          ),
          TextButton(
            child: Text('Accept'),
            onPressed: (){
              Navigator.of(context).pop(ConfirmAction.Accept);
            },
          ),
        ],
      );
    }
  );
}


