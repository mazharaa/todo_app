import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/common/color_const.dart';
import 'package:todo_app/core/utils/ui_helper.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorConst.background,
    brightness: Brightness.light,
    primaryColor: ColorConst.black,
    textTheme: textTheme,
    primaryTextTheme: textTheme.apply(
      bodyColor: ColorConst.black,
      displayColor: ColorConst.black,
      decorationColor: ColorConst.black,
    ),
    appBarTheme: AppBarTheme(
      toolbarHeight: UiHelper.setSp(70),
      color: ColorConst.whiteColor,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: ColorConst.black,
        fontWeight: FontWeight.bold,
        fontSize: UiHelper.setSp(17),
      ),
      shadowColor: ColorConst.lightGrey.withOpacity(0.2),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: UiHelper.setFont(15),
    ),
  );

  static TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall:
        GoogleFonts.poppins(fontSize: 10.sp, fontWeight: FontWeight.bold),
    titleLarge: GoogleFonts.poppins(fontSize: 20.sp),
    titleMedium: GoogleFonts.poppins(fontSize: 18.sp),
    titleSmall: GoogleFonts.poppins(fontSize: 16.sp),
    bodyLarge: GoogleFonts.poppins(fontSize: 14.sp),
    bodyMedium: GoogleFonts.poppins(fontSize: 13.sp),
    bodySmall: GoogleFonts.poppins(fontSize: 12.sp),
    labelLarge: GoogleFonts.poppins(fontSize: 11.sp),
    labelMedium: GoogleFonts.poppins(fontSize: 10.sp),
    labelSmall: GoogleFonts.poppins(fontSize: 9.sp),
  ).apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
    decorationColor: Colors.black,
  );
}
