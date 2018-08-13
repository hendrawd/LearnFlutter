import 'package:flutter/material.dart';

const double MIN = 1.0;
const double MAX = 10.0;

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<Application> {
  double sliderValue = 3.0;

  void setSliderValue(val) {
    if (val < MIN) {
      sliderValue = MIN;
    } else if (val > MAX) {
      sliderValue = MAX;
    } else {
      sliderValue = val;
    }
    setState(() {
      print('$sliderValue');
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Slider(
            value: sliderValue,
            min: MIN,
            max: MAX,
            onChanged: (double value) {
              setSliderValue(value);
            }),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              child: new Text("Minus"),
              onPressed: () {
                setSliderValue(--sliderValue);
              },
            ),
            new Padding(
              padding: EdgeInsets.all(8.0),
            ),
            new RaisedButton(
              child: new Text("Plus"),
              onPressed: () {
                setSliderValue(++sliderValue);
              },
            ),
          ],
        ),
        new Padding(padding: EdgeInsets.all(8.0),),
        new Text('value: $sliderValue'),
      ],
    )));
  }
}
