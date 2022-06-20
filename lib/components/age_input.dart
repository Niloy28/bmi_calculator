import 'package:bmi_calculator/providers/age_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AgeInputWidget extends StatefulWidget {
  const AgeInputWidget({Key? key}) : super(key: key);

  @override
  State<AgeInputWidget> createState() => _AgeInputWidgetState();
}

class _AgeInputWidgetState extends State<AgeInputWidget> {
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.lightBlueAccent, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Age (In Years)",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            context.watch<Age>().age.toString(),
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => context.read<Age>().decrement(),
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => context.read<Age>().increment(),
                icon: Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
    );
  }
}
