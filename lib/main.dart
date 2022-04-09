import 'package:flutter/material.dart';

import 'Pages/dice_calc_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/HomePage",
      routes: {
        "/HomePage": (context) => const DiceCalcPage(),
      },
    );
  }
}
