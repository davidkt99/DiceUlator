import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  AppTheme._();

  /// General Colors
  static const primary = Colors.deepPurpleAccent;
  static const textPrimary = Colors.white;
  static TextStyle font = GoogleFonts.getFont(
      'Lora',
      textStyle:
      const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
      )
  );
}