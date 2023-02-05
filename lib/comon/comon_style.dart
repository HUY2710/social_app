import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_app/comon/comon_color.dart';

class ComonStyle {
  static final styleBoarding = GoogleFonts.roboto(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w400,
      height: 17 / 14,
      letterSpacing: 2);
  static final styleHintText = GoogleFonts.roboto(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 24 / 16,
      letterSpacing: -0.2);
  static final titleLogin = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 20 / 16,
    letterSpacing: -0.1,
  );
  static final subtitleLogin = GoogleFonts.roboto(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 27 / 18,
    letterSpacing: 0.4,
  );
  static final titleCategory = GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      height: 19 / 16,
      letterSpacing: -0.1,
      color: Colors.white);
  static final titleDiscover = GoogleFonts.roboto(
      fontSize: 20,
      height: 24 / 20,
      fontWeight: FontWeight.w700,
      color: Colors.black);
  static final blueDiscover = GoogleFonts.roboto(
      fontSize: 14,
      height: 21 / 14,
      fontWeight: FontWeight.w400,
      color: ComonColor.purple2);
  static final titlePost = GoogleFonts.roboto(
      fontSize: 14,
      height: 21 / 14,
      fontWeight: FontWeight.w700,
      color: Colors.black);
  static final timeCmt = GoogleFonts.roboto(
      fontSize: 12,
      height: 18 / 12,
      fontWeight: FontWeight.w400,
      color: ComonColor.secondary);
  static final title = GoogleFonts.roboto(
      fontSize: 24,
      height: 29 / 24,
      fontWeight: FontWeight.w700,
      color: Colors.black);
  static final collection = GoogleFonts.roboto(
      fontSize: 14,
      height: 17 / 14,
      fontWeight: FontWeight.w700,
      color: Colors.white);
}
