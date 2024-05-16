import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper {
  UiHelper._();

  static BorderRadiusGeometry borderRadiusCircular({
    double? all,
    double? top,
    double? bottom,
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) {
    topLeft = setSp(topLeft ?? top ?? all ?? 0);
    topRight = setSp(topRight ?? top ?? all ?? 0);
    bottomLeft = setSp(bottomLeft ?? bottom ?? all ?? 0);
    bottomRight = setSp(bottomRight ?? bottom ?? all ?? 0);

    return BorderRadius.only(
      topLeft: Radius.circular(topLeft),
      topRight: Radius.circular(topRight),
      bottomLeft: Radius.circular(bottomLeft),
      bottomRight: Radius.circular(bottomRight),
    );
  }

  static EdgeInsets padding({
    double? all,
    double? vertical,
    double? horizontal,
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    left = setWidth(left ?? horizontal ?? all ?? 0);
    top = setHeight(top ?? vertical ?? all ?? 0);
    right = setWidth(right ?? horizontal ?? all ?? 0);
    bottom = setHeight(bottom ?? vertical ?? all ?? 0);

    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }

  static double setSp(double size) {
    return size.sp;
  }

  static double setHeight(double height) {
    return ScreenUtil().setHeight(height);
  }

  static double setWidth(double width) {
    return ScreenUtil().setWidth(width);
  }

  static double setFont(double font) {
    return ScreenUtil().setSp(font);
  }

  static double mediaHeight(BuildContext context, double scale) {
    return MediaQuery.of(context).size.height * scale;
  }

  static double mediaWidth(BuildContext context, double scale) {
    return MediaQuery.of(context).size.width * scale;
  }

  static Widget verticalSpace(double height) {
    return SizedBox(height: setHeight(height));
  }

  static Widget horizontalSpace(double width) {
    return SizedBox(width: setWidth(width));
  }

  static Widget divider({
    Color? color,
    double? thickness,
    double? height,
  }) {
    return Divider(
      color: color,
      thickness: thickness,
      height: height ?? UiHelper.setSp(30),
    );
  }
}
