import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color blueColor = Color(0xFF4E5AE8);
const Color yellowColor = Color(0xFFFFB746);
const Color pinkColor = Color(0xFFFF4667);
const Color white = Colors.white;
const primaryColor = blueColor;
const Color darkGrayColor = Color(0xFF121212);
const Color darkHeaderColor = Color(0xFF424242);

class Themes {
  static final light =
      ThemeData(
        backgroundColor: Colors.white,
        primaryColor: primaryColor, brightness: Brightness.light);

  static final dark =
      ThemeData(
        backgroundColor: darkGrayColor,
        primaryColor: darkGrayColor, brightness: Brightness.dark);
}

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.white : Colors.black
    )
  );
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.white : Colors.black
    )
  );
}
