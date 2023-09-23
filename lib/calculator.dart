
import 'dart:math';

import 'package:flutter/material.dart';

class Calculator{
  final int? height;
  final int? weight;
  double _bmi= 0;

  Calculator({@required this.height , @required this.weight});
String calculateBMI(){
   _bmi = weight! / pow(height!/100, 2);
  return _bmi.toStringAsFixed(1);
}
 String getInterpration(){
 if(_bmi >= 25){
   return 'وزن شما بالاتر از حد نرمال است.تلاش خود را بیشتر کنید';
 }else if(_bmi >= 18.5){
   return '!شما وزن طبیعی دارید. آفرین';
 }else{
   return 'وزن بدن شما کمتر از حد طبیعی است. می توانید کمی بیشتر بخورید';
 }
 }

 String getResult(){
  if( _bmi >= 25){
    return 'اضافه وزن';
  }else if( _bmi >= 18.5){
    return 'وزن طبیعی';
  }else{
    return 'کمبود وزن';
  }
  }
 }

