import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.title, @required this.onPressed});

  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 100,
        height: 56.0,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
