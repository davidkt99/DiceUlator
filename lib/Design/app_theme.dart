import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  AppTheme._();

  /// General Colors
  static const primary = Colors.deepPurpleAccent;
  static const textPrimary = Colors.black;
  static const primaryBackground = Colors.white;
  static final secondaryBackground = Colors.grey[100];

  /// General
  static const crossAxisAlignmentKeyPad = CrossAxisAlignment.stretch;

  /// Shadows
  static const textShadow = <Shadow>[
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 2.0,
      color: primary,
    )
  ];
  static const keyPadShadow = [
    BoxShadow(
      offset: Offset(2.0, 0),
      blurRadius: 2.0,
      color: AppTheme.primary,
    )
  ];

  /// Text
  static TextStyle primaryTextStyle = GoogleFonts.getFont(
      'Lora',
      textStyle:
      const TextStyle(
          color: textPrimary,
          fontWeight: FontWeight.bold,
          shadows: textShadow
      ),
  );
  static TextStyle secondaryTextStyle = GoogleFonts.getFont(
    'Lora',
    textStyle:
    const TextStyle(
        color: textPrimary,
        shadows: textShadow
    ),
  );
}