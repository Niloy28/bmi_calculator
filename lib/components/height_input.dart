import 'package:bmi_calculator/providers/height_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeightInputWidget extends StatefulWidget {
  const HeightInputWidget({Key? key}) : super(key: key);

  @override
  State<HeightInputWidget> createState() => _HeightInputWidgetState();
}

class _HeightInputWidgetState extends State<HeightInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.lightBlueAccent, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Height (In cm)",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            context.watch<Height>().height.toString(),
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => context.read<Height>().decrement(),
                icon: Icon(Icons.remove),
              ),
              Slider(
                value: context.watch<Height>().height.toDouble(),
                onChanged: (newHeight) =>
                    context.read<Height>().setHeight(newHeight),
                min: 80,
                max: 200,
                label: context.watch<Height>().height.toString(),
              ),
              IconButton(
                onPressed: () => context.read<Height>().decrement(),
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
