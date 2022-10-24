import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle title(Color color) => GoogleFonts.inter(
        color: color,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );

  static TextStyle subtitle(Color color) => GoogleFonts.inter(
        color: color,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      );

  static TextStyle text(Color color) => GoogleFonts.inter(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
      static TextStyle detalhes(Color color) => GoogleFonts.inter(
        color: color,
        fontSize: 17,
        fontWeight: FontWeight.w600,
      );
}
