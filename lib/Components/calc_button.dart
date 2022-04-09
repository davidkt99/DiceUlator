import 'package:diceulator/Design/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CalcButton extends ConsumerStatefulWidget {
  const CalcButton({Key? key}) : super(key: key);

  @override
  ConsumerState<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends ConsumerState<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppTheme.textPrimary.withOpacity(0.2),
          //   boxShadow: const [
          // BoxShadow(
          // color: AppTheme.textPrimary,
          //   offset: Offset(
          //     5.0,
          //     5.0,
          //   ),
          //   blurRadius: 10.0,
          //   spreadRadius: 2.0,
          // ), //BoxShadow
          // BoxShadow(
          //   color: Colors.white,
          //   offset: Offset(0.0, 0.0),
          //   blurRadius: 0.0,
          //   spreadRadius: 0.0,
          // ), //BoxShadow
          // ],
          ),
          child: Center(
            child: Text('1', style: TextStyle(color: AppTheme.textPrimary, fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
