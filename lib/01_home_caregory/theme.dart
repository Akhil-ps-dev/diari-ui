import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get subHeadingStyle {
  return (GoogleFonts.lato(
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      color: Colors.grey));
}

TextStyle get headingStyle {
  return (GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
  ));
}

TextStyle get titleStyle {
  return (GoogleFonts.lato(
    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
  ));
}
