import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(double size, [Color? color, FontWeight? fw]) {
  return GoogleFonts.montserrat(fontSize: size, color: color, fontWeight: fw);
}

// usage of liss for selectable times
List selectableTimes = [
  "0",
  "300",
  "600",
  "900",
  "1200",
  "1800", // half an hour
  "3600", // 1 hour
  "5400", // 1 and a half hours
  "7200", // 2 hours
  "9000", // 2 and a half hours
  "10800", // 3 hours
  "12600", // 3 and a half hours
  "14400", //4 hours
  "16200", // 4 and a half hours
  "18000" // 5 hours
];

Color renderColor(String currentState) {
  if (currentState == "FOCUS") {
    return const Color.fromARGB(255, 0, 0, 0);
  } else {
    return Color.fromARGB(255, 106, 0, 74);
  }
}
