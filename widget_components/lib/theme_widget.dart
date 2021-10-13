import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Widget',
      theme: ThemeData(
        // brightness: Brightness.dark,
        // primaryColor: Colors.lightBlue,
        colorScheme: ColorScheme(
          primary: Colors.lightBlue,
          primaryVariant: Color(0xFF117378),
          secondary: Colors.green,
          secondaryVariant: Color(0xFFFAFBFB),
          background: Color(0xFF636363),
          surface: Color(0xFF808080),
          onBackground: Colors.white,
          error: Colors.redAccent,
          onError: Colors.redAccent,
          onPrimary: Colors.redAccent,
          onSecondary: Color(0xFF322942),
          onSurface: Color(0xFF241E30),
          brightness: Brightness.dark,
        ),

        fontFamily: 'Monotype Coursiva',

        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 32.0,
              fontStyle: FontStyle.italic,
          color: Colors.white,
          fontWeight: FontWeight.bold),
        ),
      ),
      home: ThemeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ThemeApp extends StatelessWidget {
  const ThemeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme App', style: TextStyle(color: Theme.of(context).colorScheme.onBackground),),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20.0),
          color: Theme.of(context).colorScheme.secondary,
          child: Text('Hey, I am theme and you can change me at any time!',
              style: Theme.of(context).textTheme.headline1,),
        ),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.blue),
        ),
        child: FloatingActionButton(
          child: Icon(Icons.person),
          onPressed: (){},
        ),
      ),
    );
  }
}


