import 'package:flutter/material.dart';

import 'animated_radio_button_item.dart';

class AnimatedRadioButtons extends StatefulWidget {
  final List<AnimatedRadioButtonItem> items;
  final double buttonRadius;
  final Function(int value) onChanged;

  final Color backgroundColor;
  final Axis layoutAxis;
  final int value;
  final Curve animationCurve;

  AnimatedRadioButtons({
    Key key,
    @required this.items,
    this.buttonRadius,
    @required this.onChanged,
    @required this.value,
    this.layoutAxis,
    this.animationCurve,
    this.backgroundColor,
  }) : super(key: key);

  @override
  _AnimatedRadioButtonsState createState() => _AnimatedRadioButtonsState();
}

class _AnimatedRadioButtonsState extends State<AnimatedRadioButtons> {
  List<double> _radii = [];
  double _buttonRadius;
  updateSelection(int k) {
    setState(() {
      print("updating selection : $k");
      for (int i = 0; i < _radii.length; i++) {
        if (i == k) {
          _radii[i] = _buttonRadius * 0.20;
        } else {
          _radii[i] = _buttonRadius * 0.70;
        }
      }
    });
  }

  provideCallBack(int k) {
    widget.onChanged(k);
  }

  @override
  void initState() {
    if (widget.buttonRadius != null) {
      _buttonRadius = widget.buttonRadius;
    } else if (widget.buttonRadius == null) {
      _buttonRadius = 30.0;
    }
    _radii = [];
    for (int i = 0; i < widget.items.length; i++) {
      _radii.add(_buttonRadius * 0.70);
    }
    if (widget.value != null) {
      updateSelection(widget.value);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: widget.backgroundColor ?? Colors.white,
        alignment: Alignment.center,
        child: Wrap(
          runSpacing: 10.0,
          spacing: 10.0,
          direction: widget.layoutAxis ?? Axis.horizontal,
          alignment: WrapAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: widget.items.map(
            (item) {
              int _localIndex = 0;

              for (var i in widget.items) {
                if (i == item) {
                  break;
                } else {
                  _localIndex++;
                }
              }

              return GestureDetector(
                onTap: () {
                  updateSelection(_localIndex);
                  provideCallBack(_localIndex);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: _buttonRadius,
                      height: _buttonRadius,
                      decoration: new BoxDecoration(
                        color: item.getColor ?? Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        curve: widget.animationCurve ?? Curves.bounceIn,
                        width: _radii[_localIndex],
                        height: _radii[_localIndex],
                        decoration: new BoxDecoration(
                          color: item.getFillInColor ?? Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      item.getLabel,
                      style:
                          item.getLabelTextStyle ?? TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
