import 'package:flutter/material.dart';

// custom packages
import 'package:provider/provider.dart';

// user made providers for state management
import 'package:bmi_calculator/providers/age_provider.dart';
import 'package:bmi_calculator/providers/height_provider.dart';
import 'package:bmi_calculator/providers/sex_provider.dart';
import 'package:bmi_calculator/providers/weight_provider.dart';

// app pages
import 'package:bmi_calculator/screens/root_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Age(),
        ),
        ChangeNotifierProvider(
          create: (_) => Height(),
        ),
        ChangeNotifierProvider(
          create: (_) => Weight(),
        ),
        ChangeNotifierProvider(
          create: (_) => Sex(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RootPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
