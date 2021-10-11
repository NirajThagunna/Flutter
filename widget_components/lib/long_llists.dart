import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Long Lists",
      theme: ThemeData(
        // primarySwatch: Colors.lime,
      ),
      home: LongListItems(
        products: List<String>.generate(100, (i) => "Product List $i"),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LongListItems extends StatelessWidget {
  final List<String> products;

  const LongListItems({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long List Items'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${products[index]}'),
          );
        },
      ),
    );
  }
}

