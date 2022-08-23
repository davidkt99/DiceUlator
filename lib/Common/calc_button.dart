import 'package:diceulator/Design/app_theme.dart';
import 'package:diceulator/Design/size_config.dart';
import 'package:diceulator/Pages/DiceCalcPage/Components/dice_calc_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Util/StrFunc.dart';

class CalcButton extends ConsumerStatefulWidget {
  final String label;
  final int flex;
  final bool long;

  const CalcButton({Key? key, required this.label, this.flex = 1, this.long = false}) : super(key: key);

  @override
  ConsumerState<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends ConsumerState<CalcButton> {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          child: Text(
              widget.label,
              style: AppTheme.font,
            textScaleFactor: isAlphaNumeric(widget.label) || widget.label == "D" ?
            SizeConfig.textScaleFactorKeys :
            SizeConfig.textScaleFactorKeysOperators,
          ),
          onPressed: () {
            handleCalcButton(widget.label);
          },
          style: ElevatedButton.styleFrom(
              primary: AppTheme.primaryBackground,
              shadowColor: AppTheme.primary,
              elevation: 10,
              shape: widget.long
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  : const CircleBorder(),
              
            // visualDensity: AppTheme.visualDensity
          ),
        ),
      ),
    );
  }

  void handleCalcButton(String label){
    HapticFeedback.mediumImpact();
    ref.read(calcExpression.notifier).add(label);
    print(ref.watch(calcExpression));
  }
}
