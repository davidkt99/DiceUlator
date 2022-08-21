import 'package:diceulator/Design/app_theme.dart';
import 'package:diceulator/Design/size_config.dart';
import 'package:diceulator/Pages/DiceCalcPage/Components/dice_calc_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalcButton extends ConsumerStatefulWidget {
  final String label;

  const CalcButton(this.label, {Key? key}) : super(key: key);

  @override
  ConsumerState<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends ConsumerState<CalcButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
          widget.label,
          style: AppTheme.font,
        textScaleFactor: SizeConfig.calcButtonTextScaleFactor,
      ),
      onPressed: () {
        handleCalcButton(widget.label);
      },
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shadowColor: Colors.deepPurpleAccent,
          elevation: 10,
          shape: const CircleBorder(),
        visualDensity: const VisualDensity(horizontal: 4, vertical: 4),
      ),
    );
  }

  void handleCalcButton(String label){
    HapticFeedback.mediumImpact();
    ref.read(calcExpression.notifier).add(label);
    print(label);
  }
}
