import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  printDialogSelectionValue(val) {
    print(val);
  }

  void showSimpleDialogWithDeprecatedMethod() {
    SimpleDialog simpleDialog = new SimpleDialog(
      title: new Text('Simple dialog with deprecated method'),
      children: <Widget>[
        new SimpleDialogOption(
          onPressed: () {
            Navigator.pop(
                context, printDialogSelectionValue('Treasury department'));
          },
          child: new Text('Treasury department'),
        ),
        new SimpleDialogOption(
          onPressed: () {
            Navigator.pop(
                context, printDialogSelectionValue('State department'));
          },
          child: const Text('State department'),
        ),
      ],
    );
    showDialog(context: context, child: simpleDialog);
  }

  void showSimpleDialogWithBuilder() {
    showDialog(
        context: context,
        builder: (context) {
          return new SimpleDialog(
            title: new Text('Simple dialog with builder'),
            children: <Widget>[
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context,
                      printDialogSelectionValue('Treasury department'));
                },
                child: new Text('Treasury department'),
              ),
              new SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(
                      context, printDialogSelectionValue('State department'));
                },
                child: const Text('State department'),
              ),
            ],
          );
        });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            showSimpleDialogWithBuilder();
          },
          child: new Text('Show Alert Dailog'),
        ),
      ),
    );
  }
}
