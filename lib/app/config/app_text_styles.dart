import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  static TextStyle heading1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.white,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );
  static TextStyle heading2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  static TextStyle subheading1 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );
  static TextStyle subheading2 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  static TextStyle body = TextStyle(
    fontSize: 13,
    color: Colors.grey,
  );
}
