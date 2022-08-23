import 'package:flutter/material.dart';

import '../../../Common/calc_button.dart';

class CalcKeyPad extends StatelessWidget {
  const CalcKeyPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CalcButton("C"),
            CalcButton("-"),
            CalcButton(""),
            CalcButton(""),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CalcButton("7"),
            CalcButton("8"),
            CalcButton("9"),
            CalcButton("X"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CalcButton("4"),
            CalcButton("5"),
            CalcButton("6"),
            CalcButton("-"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CalcButton("1"),
            CalcButton("2"),
            CalcButton("3"),
            CalcButton("+"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            CalcButton("0"),
            CalcButton("d"),
            CalcButton(""),
            CalcButton("="),
          ],
        ),
      ],
    );
  }
}
