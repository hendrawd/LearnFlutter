import 'package:flutter/material.dart';

const int CROSS_AXIS_COUNT = 4;
const int ITEM_COUNT = 50;

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  List<int> _items = new List();

  @override
  void initState() {
    for (int i = 0; i < ITEM_COUNT; i++) {
      _items.add(i);
      print(i);
    }
    print(_items);
    super.initState();
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        body: new GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: CROSS_AXIS_COUNT,
            ),
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) {
              return cards('item $index');
            }));
  }
}

Widget cards(val) {
  return new Card(
    color: Colors.pink,
    child: new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Text('$val postfix'),
    ),
  );
}
