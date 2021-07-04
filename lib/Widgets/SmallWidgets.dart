import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


TextStyle textStyler({FontWeight fontWeight = FontWeight.normal ,
  Color color = Colors.white,
  double letterSpacing = 0,
  double fontSize = 12,
  double lineHeight = 0
}){
  return GoogleFonts.josefinSans(
    fontWeight: fontWeight,
    color:  color,
    height: lineHeight == 0 ? null :lineHeight,
    letterSpacing: letterSpacing,
    fontSize:fontSize,
  );
}