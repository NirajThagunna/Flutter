import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Slider',
      theme: ThemeData(

      ),
      home: ImageSliderApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final List<String> imgList = [
  'https://www.whatsappimages.in/wp-content/uploads/2021/01/Boys-Feeling-Very-Sad-Images-Pics-Downlaod.jpg',
  'https://media.gettyimages.com/photos/success-picture-id912928582?s=612x612',
  'https://lh3.googleusercontent.com/proxy/d3-SQlNMIMGeuFNabTiUoCp89hPMVpGFwCVtvqTi0jUMH2mxWmB5_itj42OLYjmu6lWiDrcQLuK6z0mWIhaaeYk6lIvAP31MgfXzy-9TNy6U1jbf0-SJvudW5_WXf_PTkvjgfhPEnDMk2u15cI2pmQ',
  'https://1.bp.blogspot.com/-kOHLZswBPLo/X0qcKtnWE_I/AAAAAAAAdvM/ZPIK8viVsfgkH-zCDNV8UmYs964E0yrEACLcBGAsYHQ/s1600/sad%2Bimages%2Bfor%2Bwhatsapp%2Bdp%2B%2B%25285%2529.jpg',
  'https://1.bp.blogspot.com/-kOHLZswBPLo/X0qcKtnWE_I/AAAAAAAAdvM/ZPIK8viVsfgkH-zCDNV8UmYs964E0yrEACLcBGAsYHQ/s1600/sad%2Bimages%2Bfor%2Bwhatsapp%2Bdp%2B%2B%25285%2529.jpg'
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: EdgeInsets.all(10.0),
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        child: Stack(
          children: <Widget>[
            Image.network(item,
                fit: BoxFit.cover,
              width: 1000,
            ),
            Positioned(
              top: 160.0,
              left: 85.0,
              child: Text('No. ${imgList.indexOf(item)} image',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            )
          ],
        )),
  ),
))
    .toList();

class ImageSliderApp extends StatelessWidget {
  const ImageSliderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
            scrollDirection: Axis.horizontal,
          ),
          items: imageSliders,
        ),
      ),
    );
  }
}


