import 'package:flutter/material.dart';
import '../constants.dart';


class BottomButton extends StatelessWidget {
  BottomButton({
    @required this.ButtonTitle,
    this.onTap,
  });

  final String ButtonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            ButtonTitle,
            style: kCalculateButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}