import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "Java"),
    ListItem(2, "DSA"),
    ListItem(3, "OOPs"),
    ListItem(4, "Dart"),
  ];

  List<DropdownMenuItem<ListItem>>? _dropdownMenuItems;
  ListItem? _itemSelected;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropdownMenuItems(_dropdownItems);
    _itemSelected = _dropdownMenuItems![1].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropdownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        )
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Menu"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: 200,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: _itemSelected,
                  items: _dropdownMenuItems,
                  onChanged: (value) {
                    setState(() {
                      _itemSelected = value as ListItem?;
                    });
                  },
                ),
              ),
            ),
          ),
          Text("We have selected ${_itemSelected!.name}"),
        ],
      ),
    );
  }
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
