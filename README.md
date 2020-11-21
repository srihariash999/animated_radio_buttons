# animated_radio_buttons

A radio button package for flutter. This widget is useful to quickly add a set of radio buttons to your flutter app

## Installing

Add the following to your `pubspec.yaml` file:

    dependencies:
      animated_radio_buttons: ^0.0.1

## Simple Usage
#### Creating a basic `CheckboxGroup`

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
              );