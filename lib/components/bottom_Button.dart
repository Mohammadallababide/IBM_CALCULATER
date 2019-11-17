import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({this.buttonTitle,this.onTap});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
              buttonTitle,
              style: KLableTextStyle ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        color: KBottomContainerColor,
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}
