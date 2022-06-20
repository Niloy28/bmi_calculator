import 'package:flutter/material.dart';

// custom packages
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// user made widgets
import '../components/age_input.dart';
import '../components/weight_input.dart';
import '../components/height_input.dart';
import '../components/sex_input.dart';

// app pages
import 'package:bmi_calculator/screens/result_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: [
          const StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: AgeInputWidget(),
          ),
          const StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: WeightInputWidget(),
          ),
          const StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: HeightInputWidget(),
          ),
          const StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: SexInputWidget(),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Calculate BMI",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  Icon(
                    Icons.run_circle,
                    size: 50,
                  ),
                ],
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ResultPage(),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
