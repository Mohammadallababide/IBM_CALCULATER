import 'dart:math';
class CalculatorBrain{
CalculatorBrain({this.height,this.weidth});
  final int weidth;
  final int height;
  double _bmi;
  String CalculteBMI(){
   _bmi = weidth/pow(height/100,2);
 return  _bmi.toStringAsFixed(1);
  }
  String getResulte(){
    if(_bmi>=25){return 'Over weight';}
    else if(_bmi>18.5){return 'Normal';}
    else {return 'Under weight';}
  }
  String getInterpertation()
  {
    if(_bmi>=25){return 'you have a higher than normal body weight. Try to execerise more';}
    else if(_bmi>18.5){return 'you have a normal body weight. Good job';}
    else {return 'you have a lowe than normal body weight. you can eat a bit more';}
  }
}
