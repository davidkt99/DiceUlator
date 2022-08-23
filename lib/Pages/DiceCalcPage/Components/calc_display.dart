import 'package:diceulator/Design/app_theme.dart';
import 'package:diceulator/Design/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dice_calc_providers.dart';

class CalcDisplay extends ConsumerStatefulWidget {
  const CalcDisplay({Key? key}) : super(key: key);

  @override
  _CalcDisplayState createState() => _CalcDisplayState();
}

class _CalcDisplayState extends ConsumerState<CalcDisplay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 4,
          child: Container(),
        ),
        Expanded(
          flex: 2,
          child: DefaultTextStyle(
            style: const TextStyle(),
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                    ref.watch(calcExpression.provider),
                  style: AppTheme.font,
                  textScaleFactor: SizeConfig.textScaleFactorDisplay,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
