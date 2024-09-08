import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTheme {
  static final _appColors = AppColors();

  static ThemeData lightTheme(BuildContext context) => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        primaryColor: _appColors.appColor,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: _appColors.appColor,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: _appColors.appColor,
          primary: _appColors.appColor,
          brightness: Brightness.light,
          secondary: _appColors.appSecondaryColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply().copyWith(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: _appColors.appColor,
            foregroundColor: _appColors.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      );
}
