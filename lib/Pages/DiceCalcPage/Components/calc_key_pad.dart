import 'package:diceulator/Design/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../Common/calc_button.dart';

class CalcKeyPad extends StatelessWidget {
  const CalcKeyPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
            children: const [
              CalcButton("C"),
              CalcButton("-"),
              CalcButton(""),
              CalcButton(""),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
            children: const [
              CalcButton("7"),
              CalcButton("8"),
              CalcButton("9"),
              CalcButton("X"),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
            children: const [
              CalcButton("4"),
              CalcButton("5"),
              CalcButton("6"),
              CalcButton("-"),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
            children: const [
              CalcButton("1"),
              CalcButton("2"),
              CalcButton("3"),
              CalcButton("+"),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
            children: const [
              CalcButton("0"),
              CalcButton("d"),
              CalcButton(""),
              CalcButton("="),
            ],
          ),
        ),
      ],
    );
  }
}
