import 'package:flutter/material.dart';
import 'package:animated_radio_buttons/animated_radio_buttons.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myVar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedRadioButtons(
            backgroundColor: Colors.yellow[400],
            value: myVar,
            layoutAxis: Axis.horizontal,
            buttonRadius: 40.0,
            items: [
              AnimatedRadioButtonItem(
                  label: "Star Battles",
                  color: Colors.black,
                  fillInColor: Colors.grey),
              AnimatedRadioButtonItem(
                  label: "Star Trek",
                  labelTextStyle: TextStyle(color: Colors.blue),
                  fillInColor: Colors.yellow[400]),
              AnimatedRadioButtonItem(
                  label: "Losers",
                  color: Colors.green,
                  fillInColor: Colors.greenAccent)
            ],
            onChanged: (value) {
              setState(() {
                myVar = value;
              });
            },
          ),
          myVar == null
              ? Text(" Current selected index: *please select one* ")
              : Text(" Current selected index: $myVar")
        ],
      ),
    );
  }
}
