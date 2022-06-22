import 'package:flutter/material.dart';

// app pages
import 'package:bmi_calculator/utility/bmi_calculator.dart';

class ResultPage extends StatelessWidget {
  final double bmi;
  final String category;
  final String risk;

  const ResultPage(
      {Key? key, required this.bmi, required this.category, required this.risk})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color warningColor = getWarningColor(risk) as Color;

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Column(
              children: [
                Text(
                  "You are $category",
                  style: TextStyle(
                    fontSize: 30,
                    color: warningColor,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "BMI",
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  bmi.toStringAsFixed(1),
                  style: TextStyle(
                      color: warningColor,
                      fontSize: 120,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "You are at $risk risk",
                  style: TextStyle(
                    fontSize: 25,
                    color: warningColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
