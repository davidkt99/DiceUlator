import 'dart:ffi';

import 'package:diceulator/Design/size_config.dart';
import 'package:diceulator/Pages/DiceCalcPage/Components/dice_calc_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Components/calc_key_pad.dart';



class DiceCalcPage extends ConsumerStatefulWidget {
  const DiceCalcPage({Key? key}) : super(key: key);

  @override
  _DiceCalcPageState createState() => _DiceCalcPageState();
}

class _DiceCalcPageState extends ConsumerState<DiceCalcPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        width: SizeConfig.widthMultiplier * 100,
        height: SizeConfig.heightMultiplier * 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
                child: Container(
                  child: Text(ref.watch(calcExpression)),
                )
            ),
            const Expanded(
              flex: 8,
                child: CalcKeyPad()
            ),
          ],
        ),
      );
  }
}