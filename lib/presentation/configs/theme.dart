import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';


class AppTheme {
  final _appColor = AppColors();
  ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorSchemeSeed: _appColor.appColor,
      textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme.apply().copyWith(),
      ),
    );
  }
}