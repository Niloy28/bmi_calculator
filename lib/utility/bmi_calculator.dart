import 'package:flutter/material.dart';

double getBmi(int weight, int height) {
  var heightInM = height / 100;
  return weight / (heightInM * heightInM);
}

String getBmiDiagnostics(double bmi) {
  String result = "";

  if (bmi < 18.5) {
    result = "Underweight-Increased";
  } else if (bmi < 24.9) {
    result = "Normal-Least";
  } else if (bmi < 29.9) {
    result = "Overweight-Increased";
  } else if (bmi < 34.9) {
    result = "Obese-High";
  } else if (bmi < 39.9) {
    result = "Very Obese-Very High";
  } else {
    result = "Extremely Obese-Extremely High";
  }

  return result;
}

Color? getWarningColor(String risk) {
  if (risk.toLowerCase().contains("extreme")) {
    return Colors.amber[900];
  } else if (risk.toLowerCase().contains("high")) {
    return Colors.amber[600];
  } else if (risk.toLowerCase().contains("very")) {
    return Colors.amber[800];
  } else if (risk.toLowerCase().contains("increased")) {
    return Colors.amber[300];
  } else {
    return Colors.green[800];
  }
}
