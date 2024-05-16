import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    displayLarge: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 20.sp),
    titleMedium: TextStyle(fontSize: 18.sp),
    titleSmall: TextStyle(fontSize: 16.sp),
    bodyLarge: TextStyle(fontSize: 14.sp),
    bodyMedium: TextStyle(fontSize: 13.sp),
    bodySmall: TextStyle(fontSize: 12.sp),
    labelLarge: TextStyle(fontSize: 11.sp),
    labelMedium: TextStyle(fontSize: 10.sp),
    labelSmall: TextStyle(fontSize: 9.sp),
  ).apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
    decorationColor: Colors.black,
  );
}
