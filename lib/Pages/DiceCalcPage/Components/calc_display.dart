import 'package:diceulator/Design/app_theme.dart';
import 'package:diceulator/Design/size_config.dart';
import 'package:flutter/cupertino.dart';
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
    return DefaultTextStyle(
          style: const TextStyle(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white,
                    Colors.white.withOpacity(0.8),
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0),
                  ],
                ),
              ),
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: ref.watch(pastRollsProvider).length,
                  reverse: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        ref.watch(pastRollsProvider)[index],
                        style: AppTheme.secondaryTextStyle,
                        textScaleFactor: SizeConfig.textScaleFactorPastRolls,
                        textAlign: TextAlign.right,
                      ),
                    );
                  }
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomRight,
              child: Text(
                ref.watch(solProvider),
                style: AppTheme.secondaryTextStyle,
                textScaleFactor: SizeConfig.textScaleFactorVal,
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  Text(
                      ref.watch(calcExpressionProvider),
                    style: AppTheme.primaryTextStyle,
                    textScaleFactor: SizeConfig.textScaleFactorDisplay,
                  ),
                  const SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
