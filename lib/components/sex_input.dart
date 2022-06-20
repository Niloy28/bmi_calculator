import 'package:bmi_calculator/providers/sex_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SexInputWidget extends StatefulWidget {
  const SexInputWidget({Key? key}) : super(key: key);

  @override
  State<SexInputWidget> createState() => _SexInputWidgetState();
}

class _SexInputWidgetState extends State<SexInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.lightBlueAccent, width: 2),
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "I am",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                ToggleButtons(
                  isSelected: context.watch<Sex>().sexList,
                  onPressed: (int index) => context.read<Sex>().setSex(index),
                  children: const [
                    Icon(Icons.male, size: 100),
                    Icon(Icons.female, size: 100),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
