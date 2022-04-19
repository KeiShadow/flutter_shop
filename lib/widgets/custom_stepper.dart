import 'package:flutter/material.dart';
import 'package:flutter_shop/widgets/RoundedIconButton.dart';

class CustomStepper extends StatefulWidget {
  CustomStepper({
    required this.lowerLimit,
    required this.upperLimit,
    required this.stepValue,
    required this.iconSize,
    required this.value,
  });

  final int lowerLimit;
  final int upperLimit;
  int stepValue = 0;
  final double? iconSize;
  int value;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedIconButton(
          icon: Icons.remove,
          iconSize: widget.iconSize,
          onPress: () {
            setState(() {
              if (widget.value == widget.lowerLimit) {
                widget.value = widget.lowerLimit;
              } else {
                widget.value = widget.value - widget.stepValue;
              }
            });
          },
        ),
        SizedBox(
          width: widget.iconSize,
          child: Text(
            '${widget.value}',
            style: TextStyle(
                fontSize: widget.iconSize! * 0.8, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        RoundedIconButton(
          icon: Icons.add,
          iconSize: widget.iconSize,
          onPress: () {
            setState(() {
              widget.value = widget.value == widget.upperLimit
                  ? widget.upperLimit
                  : widget.value += widget.stepValue;
            });
          },
        ),
      ],
    );
  }
}
