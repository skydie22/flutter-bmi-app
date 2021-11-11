import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  //todo : kalo mau ganti tips

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more. \n "
          "\n"
          "TIPS : \n eat in smal portions \n"
          "diligent exercise \n "
          "Increase consumption of fruits and vegetables";
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight. Good job!\n";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.\n "
          "\n"
          "tips : \n Increase your calorie intake \n "
          "Choose healthy foods that are rich in nutrients \n"
          "Consumption of calorie-dense and nutrient-dense drinks";
    }
  }
}
