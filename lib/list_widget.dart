import 'package:flutter/material.dart';

/**
 * Bisa diibaratkan membuat list dengan bantuan adapter di android
 * itemBuilder = adapter.onCreateViewHolder+adapter.onBindViewHolder
 */
void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {

  List<int> _listitems = new List();
  @override
  void initState() {
    for(int i=0;i<50;i++){
      _listitems.add(i);
      print(i);
    }
    print(_listitems);
    super.initState();
  }


  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView.builder(
            itemCount: _listitems.length,
            itemBuilder: (BuildContext context, int index){
              return new ListTile(
                title: new Text('This is Title'),
                isThreeLine: true,
                subtitle: new Text('This is our Subtitle'),
                trailing: new Icon(Icons.close),
              );
            }
        )
    );
  }
}