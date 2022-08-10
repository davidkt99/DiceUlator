import 'package:diceulator/Design/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends ConsumerStatefulWidget {
  final String label;

  const CalcButton(this.label, {Key? key}) : super(key: key);

  @override
  ConsumerState<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends ConsumerState<CalcButton> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text(
            widget.label,
            style: GoogleFonts.getFont(
                'Lora',
                textStyle:
                const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                )
            ),
          textScaleFactor: SizeConfig.calcButtonTextScaleFactor,
        ),
        onPressed: () {
          handleCalcButton(widget.label);
        },
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            shadowColor: Colors.deepPurpleAccent,
            elevation: 10,
            side: const BorderSide(width: 0.5, color: Colors.white10),
            shape: const CircleBorder(),
          visualDensity: const VisualDensity(horizontal: 4, vertical: 4),
        ),
      ),
    );
  }

  void handleCalcButton(String label){
    HapticFeedback.mediumImpact();
    print(label);
  }
}
