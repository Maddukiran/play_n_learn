import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({this.cardChild, this.color});

  final Widget cardChild;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Center(child: cardChild),
    );
  }
}
