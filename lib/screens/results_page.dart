import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_Button.dart';
import '../Calculator_Brain.dart';
class ResultsPage extends StatelessWidget {
ResultsPage({@required this.resultbmi,@required this.resultText,@required this.interpretation });
  final String resultbmi;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text(
      'BMI CALCULATOR'
    ),
  ),
  body: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Expanded(
        child: Container(
          child: Text("Your Result",style: KTitleTextStyle),
        ),
      ),
      Expanded(
        flex: 5,
        child: ReusableCard(
colour: KActiveCardColor,
            widgetCard: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(resultText,style: resultTextStyle),
              Text(resultbmi,style:KBMITextStyle ),
                Text(interpretation,
                    style: KBodyTextStyle,
                textAlign: TextAlign.center,
                )
              ],
            ),
        ),
      ),
      Expanded(
        child: BottomButton(buttonTitle:'RE_CALCULATE',onTap: (){
         Navigator.pop(context);
        },),
      )
    ],
  ),
);
  }
}
