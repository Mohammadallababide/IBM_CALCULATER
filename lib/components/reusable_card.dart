import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.widgetCard , this.onPress});
  final Color colour;
  final Widget widgetCard;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap: onPress ,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: this.colour, borderRadius: BorderRadius.circular(10.0)),
        child: widgetCard,
      ),
    );
  }
}