import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Switch',
      theme: ThemeData(

      ),
      home: CustomSwitchApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CustomSwitchApp extends StatelessWidget {
  const CustomSwitchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Switch App'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: SwitchScreen(),
      ),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlutterSwitch(
          value: isSwitched,
          activeColor: Colors.black,
          activeTextColor: Colors.white,
          inactiveTextColor: Colors.white,
          inactiveColor: Colors.redAccent,
          showOnOff: true,
          onToggle: (value) {
            print(value);
            setState(() {
              isSwitched = value;
            });
          },
        ),
        SizedBox(
          height: 15,
        ),
        Text("Value: $isSwitched",
        style: TextStyle(color: Colors.red, fontSize: 25.0),),
      ],
    );
  }
}


