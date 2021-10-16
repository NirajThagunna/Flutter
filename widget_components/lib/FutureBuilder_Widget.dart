import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FutureBuilder Widget',

      // to hide debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Click Me!'),
          onPressed: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => FutureBuilderApp(),
          )),
        ),
      ),
    );
  }
}

class FutureBuilderApp extends StatelessWidget {
  const FutureBuilderApp({Key? key}) : super(key: key);

  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return "I am data";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder Data'),
      ),
      body: FutureBuilder(
        builder: (context, snapshot) {
          // Checking if the future is resolved or not
          if (snapshot.connectionState == ConnectionState.done) {
            // if the future builder has some data
            if (snapshot.hasData) {
              // Extracting the data which will be returned by the future
              final data = snapshot.data as String;
              return Center(
                child: Text('$data', style: TextStyle(fontSize: 20),),
              );
            }
            // if we got an error
            else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error} occurred',
                style: TextStyle(fontSize: 20),),
              );
            }
          }
          // displaying the circular progress indicator to show a waiting state
          return Center(
            child: CircularProgressIndicator(),
          );
        },
        // future that needs to be resolved to display something on the screen
        future: getData(),
      ),
    );
  }
}


