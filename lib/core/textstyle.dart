import 'package:flutter/material.dart';
import 'package:weather_app/core/appcolors.dart';

class AppFontStyle {
  static final whiteHeading = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w700,
    fontFamily: 'Poppins',
    letterSpacing: -0.37,
    color: Appcolors.whiteColor,
  );

  static final yellowHeading = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    letterSpacing: -0.37,
    color: Appcolors.yellowColor,
  );

  static final subHeading = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    fontFamily: 'Open Sans',
    letterSpacing: 0.47,
    color: Appcolors.whiteColor,
  );

  static final title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    letterSpacing: -0.37,
    color: Appcolors.whiteColor,
  );
  static final subtitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    letterSpacing: -0.37,
    color: Appcolors.whiteColor,
  );
  static final smallerText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    letterSpacing: -0.37,
    color: Appcolors.whiteColor,
  );
}
