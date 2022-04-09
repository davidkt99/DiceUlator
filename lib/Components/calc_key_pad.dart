import 'package:diceulator/Components/calc_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalcKeyPad extends StatelessWidget {
  const CalcKeyPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(),
              CalcButton(),
              CalcButton(),
              CalcButton(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(),
              CalcButton(),
              CalcButton(),
              CalcButton(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(),
              CalcButton(),
              CalcButton(),
              CalcButton(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalcButton(),
              CalcButton(),
              CalcButton(),
              CalcButton(),
            ],
          ),
        ],
      ),
    );
  }
}
