import 'package:flutter/material.dart';

void main() {
  runApp(myApplication());
}

class myApplication extends StatefulWidget {
  @override
  _applicationState createState() => new _applicationState();
}

class _applicationState extends State<myApplication> {
  String txt = 'Click to Change';
  List<ListTile> items = new List();

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      items.add(new ListTile(
        title: new Text('new Item ' + (i + 1).toString()),
        trailing: new Icon(Icons.arrow_forward),
      ));
    }
    super.initState();
  }

  void change() {
    setState(() {
      if (txt == 'Click to Change')
        txt = 'Has Change';
      else
        txt = 'Click to Change';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Title 1',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Test Appbar'),
        ),
        body: new Container(
          color: Colors.yellow,
          child: new Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(30.0),
              child: new ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return items[index];
                },
              )),
        ),
      ),
    );
  }
}

class applicationLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Title 1',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Test Appbar'),
        ),
        body: new Container(
          color: Colors.yellow,
          child: new Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(30.0),
              child: new ListView(
                children: <Widget>[
                  new ListTile(
                    title: new Text('Item 1',
                        style: new TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  new ListTile(
                    title: new Text('Item 2',
                        style: new TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  new ListTile(
                    title: new Text('Item 3',
                        style: new TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  //new myApplication()
                ],
              )),
        ),
      ),
    );
  }
}

class myText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text(
        'First App',
        textDirection: TextDirection.ltr,
        style: new TextStyle(color: Colors.white),
      ),
    );
  }
}
