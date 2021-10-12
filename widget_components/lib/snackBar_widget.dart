import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SnackBar App",
      theme: ThemeData(
        // primaryColor: Color(0xFF43a047),
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFffcc00)),
        // primaryColorBrightness: Brightness.dark,
      ),
      home: SnackBarApp(title: 'SnackBar App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SnackBarApp extends StatefulWidget {
  final String title;

  const SnackBarApp({Key? key, required this.title}) : super(key: key);

  @override
  _SnackBarAppState createState() => _SnackBarAppState();
}

class _SnackBarAppState extends State<SnackBarApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(widget.title),
      ),
      body: ShowSnackBar(),
    );
  }
}


class ShowSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Click Me!', style: TextStyle(fontSize: 20),),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(20.0)),
          elevation: MaterialStateProperty.all(4),
        ),
        onPressed: (){
          final snackBar = SnackBar(
            content: Text('Hey, I am a SnackBar msg!', style: TextStyle(fontSize: 18),),
            duration: Duration(seconds: 5),
            action: SnackBarAction(
              label: 'UNDO',
              textColor: Colors.yellow,
              onPressed: (){},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}

