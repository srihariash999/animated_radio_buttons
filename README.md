# animated_radio_buttons

A radio button package for flutter. This widget is useful to quickly add a set of radio buttons to your flutter app.


## Package page 
 
  [animated_radio_buttons](https://pub.dev/packages/animated_radio_buttons)


## Simple Usage

#### Creating a basic `RadioButtons Group`

    
    int myVar ;
    
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

<p>
  <img width="320px" alt="Output" src="https://raw.githubusercontent.com/srihariash999/animated_radio_buttons/master/Screnshots/gif.gif"/>

</p>
