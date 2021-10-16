import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dismissible',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Dismissible App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final itemsList = List<String>.generate(10, (index) => 'List item $index');

  ListView generateItemsList() {
    return ListView.builder(
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(itemsList[index]),
          child: InkWell(
            onTap: () {
              print('${itemsList[index]} clicked');
            },
            child: ListTile(
              title: Text('${itemsList[index]}'),
            ),
          ),
          background: slideRightBackground(),
          secondaryBackground: slideLeftBackground(),
          confirmDismiss: (direction) async {
            if (direction == DismissDirection.endToStart) {
              final bool res = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Text('Are you sure you want to delete ${itemsList[index]}?'),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Cancel', style: TextStyle(color: Colors.black),),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: Text('Delete', style: TextStyle(color: Colors.red),),
                        onPressed: () {
                          // delete the list item
                          setState(() {
                            itemsList.removeAt(index);
                          });
                          // after removing the list item go to the home page
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                }
              );
              return res;
            }
            else {
              final bool res = await showDialog(
                  context: context,
                builder: (BuildContext context) {
                    return AlertDialog(
                      content: Text('Editing'),
                      actions: <Widget>[
                        TextButton(
                          child: Text("Edit", style: TextStyle(color: Colors.black),),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        )
                      ],
                    );
                }
              );
              return res;
            }
          },
        );
      },
    );
  }

  // slide right background
  Widget slideRightBackground() {
    return Container(
      color: Colors.green,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              ' Edit',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            )
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: Colors.red,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              ' Delete',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: generateItemsList(),
    );
  }
}

