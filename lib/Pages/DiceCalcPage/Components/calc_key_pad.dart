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
              CalcButton(label: "C"),
              CalcButton(label: ""),
              CalcButton(label: ""),
              CalcButton(label: "")
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
            children: const [
              CalcButton(label: "7"),
              CalcButton(label: "8"),
              CalcButton(label: "7"),
              CalcButton(label: "+")
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
            children: const [
              CalcButton(label: "4"),
              CalcButton(label: "5"),
              CalcButton(label: "6"),
              CalcButton(label: "-")
            ],
          ),
        ),
        Expanded(
          flex: 2,
            child: Row(
              crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
                          children: const [
                            CalcButton(label: "1"),
                            CalcButton(label: "2"),
                            CalcButton(label: "3"),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          crossAxisAlignment: AppTheme.crossAxisAlignmentKeyPad,
                          children: const [
                            CalcButton(label: "0"),
                            CalcButton(label: "D", flex: 2, long: true,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const CalcButton(label: "=", long: true,),
              ],
            ),
        ),
      ],
    );
  }
}
