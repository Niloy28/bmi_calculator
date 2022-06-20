import 'package:bmi_calculator/providers/age_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/age_provider.dart';
import '../providers/height_provider.dart';
import '../providers/weight_provider.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("This is the results page."),
            Icon(Icons.front_hand_outlined),
            Text('Age: ${context.watch<Age>().age}'),
            Text('Height: ${context.watch<Height>().height}'),
            Text('Weight: ${context.watch<Weight>().weight}'),
          ],
        ),
      ),
    );
  }
}
