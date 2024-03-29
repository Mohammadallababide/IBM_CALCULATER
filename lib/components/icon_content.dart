import 'package:flutter/material.dart';
import '../constants.dart';
class IconContent extends StatelessWidget {
  IconContent({ this.icon , this.lebal});
  final IconData icon ;
  final String lebal;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
//          FontAwesomeIcons.mars
          this.icon,
          size: 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
//          'MALE'
          this.lebal,
          style: KLableTextStyle ,
        )
      ],
    );
  }
}