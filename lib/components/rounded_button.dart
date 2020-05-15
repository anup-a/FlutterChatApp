import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.buttonColor, this.buttonText, @required this.onbuttonPressed});
  final buttonColor;
  final buttonText;
  final onbuttonPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: buttonColor,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        onPressed: () {
          //Go to login screen.
          onbuttonPressed();
        },
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
