import 'package:diceulator/Design/size_config.dart';
import 'package:diceulator/Pages/DiceCalcPage/Components/calc_display.dart';
import 'package:flutter/material.dart';

import '../../Design/app_theme.dart';
import 'Components/calc_key_pad.dart';



class DiceCalcPage extends StatefulWidget {
  const DiceCalcPage({Key? key}) : super(key: key);

  @override
  _DiceCalcPageState createState() => _DiceCalcPageState();
}

class _DiceCalcPageState extends State<DiceCalcPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.primaryBackground,
        width: SizeConfig.widthMultiplier * 100,
        height: SizeConfig.heightMultiplier * 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 37),
                  child: CalcDisplay(),
                ),
            ),
            Expanded(
              flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppTheme.secondaryBackground,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)
                    ),
                    boxShadow: AppTheme.keyPadShadow
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        bottom: 40,
                        left: 10,
                        right: 10,
                        top: 20
                    ),
                    child: CalcKeyPad(),
                  ),
                )
            ),
          ],
        ),
      );
  }
}