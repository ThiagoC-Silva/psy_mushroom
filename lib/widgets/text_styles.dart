import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TextStyles {
  static TextStyle primary = GoogleFonts.russoOne(
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static TextStyle secondary = GoogleFonts.rockSalt(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
}
