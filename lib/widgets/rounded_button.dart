import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.buttonText, this.buttonColor, this.buttonCallback});

  final String buttonText;
  final Color buttonColor;
  final Function buttonCallback;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor,
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      elevation: 5.0,
      child: MaterialButton(
        onPressed: buttonCallback,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

//Color(0xff4E878C),
