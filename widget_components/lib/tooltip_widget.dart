import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tooltip App",
      theme: ThemeData(
        // primaryColor: Color(0xFF43a047),
        // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFffcc00)),
        // primaryColorBrightness: Brightness.dark,
      ),
      home: TooltipApp(title: 'Tooltip App'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TooltipApp extends StatefulWidget {
  final String title;

  const TooltipApp({Key? key, required this.title}) : super(key: key);

  @override
  _TooltipAppState createState() => _TooltipAppState();
}

class _TooltipAppState extends State<TooltipApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Tooltip(
          message: 'I am a Tooltip',
          height: 50.0,
          waitDuration: Duration(seconds: 1),
          showDuration: Duration(seconds: 3),
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextButton(
            child: Icon(
              Icons.facebook,
              size: 50,
            ),
            onPressed: (){},
          ),
        ),
      ),
    );
  }
}
