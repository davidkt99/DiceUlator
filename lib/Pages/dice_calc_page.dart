import 'package:diceulator/Components/calc_key_pad.dart';
import 'package:diceulator/Design/app_theme.dart';
import 'package:diceulator/Design/size_config.dart';
import 'package:flutter/material.dart';



class DiceCalcPage extends StatefulWidget {
  const DiceCalcPage({Key? key}) : super(key: key);

  @override
  State<DiceCalcPage> createState() => _DiceCalcPageState();
}

class _DiceCalcPageState extends State<DiceCalcPage> {

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
                child: Container()
            ),
            const Expanded(
              flex: 7,
                child: CalcKeyPad()
            ),
          ],
        ),
      );
  }
}