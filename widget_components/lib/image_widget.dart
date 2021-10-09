import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Images",
      home: Scaffold(
        body: ImageWidget(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Image.asset('assets/images/Hacker-Thumb.jpg'),
            // Text('Ethical Hacker', textScaleFactor: 1.5,),
            // Image.network('https://png.pngtree.com/illustrations/20190327/ourmid/pngtree-cure-starry-sky-night-sky-star-png-image_38228.jpg',
            // fit: BoxFit.cover,),
            // Image.network('https://c.tenor.com/Ej3BJBhwt_0AAAAC/cute-kitty.gif?raw=true'),
            FadeInImage.assetNetwork(
              placeholder: "I am a FadeInImage",
              image: 'https://png.pngtree.com/illustrations/20190327/ourmid/pngtree-cure-starry-sky-night-sky-star-png-image_38228.jpg',
              height: 200,
              width: 400,
            )
          ],
        ),
      ),
    );
  }
}
