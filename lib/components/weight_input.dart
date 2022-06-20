import 'package:bmi_calculator/providers/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeightInputWidget extends StatefulWidget {
  const WeightInputWidget({Key? key}) : super(key: key);

  @override
  State<WeightInputWidget> createState() => _WeightInputWidgetState();
}

class _WeightInputWidgetState extends State<WeightInputWidget> {
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
            "Weight (In Kilograms)",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            context.watch<Weight>().weight.toString(),
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () => context.read<Weight>().decrement(),
                icon: Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () => context.read<Weight>().increment(),
                icon: Icon(Icons.add),
              )
            ],
          ),
        ],
      ),
    );
  }
}
