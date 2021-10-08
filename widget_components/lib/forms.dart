import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root
  // of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forms',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FormApp(),
    );
  }
}

class FormApp extends StatefulWidget {
  const FormApp({Key key}) : super(key: key);

  @override
  _FormAppState createState() => _FormAppState();
}

class _FormAppState extends State<FormApp> {
  // Unique key for the validation
  // final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey();
  String fname = "";
  String pno = "";
  String pass = "";

  // void initState() {
  //   super.initState();
  //   fName = "";
  //   pno = "";
  //   pass = "";
  // }

  void _submit() {
    final _isValid = _formKey.currentState.validate();
    if (!_isValid)
      return;
    _formKey.currentState.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms"),
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                icon: const Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: "Full Name",
              ),
              onFieldSubmitted: (value) {
                setState(() {
                  fname = value;
                });
              },
              validator: (value) {
                if (value.isEmpty)
                  return 'Please enter some text';
                return null;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter phone number',
                labelText: "Phone Number",
              ),
              onFieldSubmitted: (value) {
                pno = value;
              },
              validator: (value) {
                if (value.isEmpty)
                  return 'Please enter any number';
                return null;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: 'Enter Password',
                labelText: "Password",
              ),
              onFieldSubmitted: (value) {
                setState(() {
                  pass = value;
                });
              },
              validator: (value) {
                if (value.isEmpty)
                  return 'Please enter the correct password';
                return null;
              },
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 155, top: 30),
                child: ElevatedButton(
                  child: Text('Submit', style: TextStyle(color: Colors.white, fontSize: 20),),
                  style: ButtonStyle( 
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () => _submit();
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 165, top: 20),
                child: Column(
                  children: <Widget>[
                    fname.isEmpty ? Text('No Data', textScaleFactor: 1.5,) : Text('$fname', textScaleFactor: 1.5,),
                    pno.isEmpty ? Text('No Data', textScaleFactor: 1.5,) : Text('$pno', textScaleFactor: 1.5,),
                    pass.isEmpty ? Text('No Data', textScaleFactor: 1.5,) : Text('$pass', textScaleFactor: 1.5,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

