import 'package:flutter/material.dart';

const Color blueColor = Color(0xFF4E5AE8);
const Color yellowColor = Color(0xFFFFB746);
const Color pinkColor = Color(0xFFFF4667);
const Color white = Colors.white;
const primaryColor = blueColor;
const Color darkGrayColor = Color(0xFF121212);
const Color darkHeaderColor = Color(0xFF424242);

class Themes {
  static final light =
      ThemeData(primaryColor: primaryColor, brightness: Brightness.light);

  static final dark =
      ThemeData(primaryColor: darkGrayColor, brightness: Brightness.dark);
}
