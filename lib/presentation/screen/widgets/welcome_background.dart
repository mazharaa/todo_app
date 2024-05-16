import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/common/color_const.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  final String buttonTitle;
  final VoidCallback buttonOnPressed;

  const WelcomeBackground({
    super.key,
    required this.child,
    required this.buttonTitle,
    required this.buttonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = ScreenUtil().screenHeight;
    final screenWidth = ScreenUtil().screenWidth;

    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/imgs/shape_main_top.png',
            ),
          ),
          child,
          Positioned(
            top: 668.h,
            left: 20.w,
            child: ElevatedButton(
              onPressed: buttonOnPressed,
              style: ElevatedButton.styleFrom(
                fixedSize: Size(335.w, 60.h),
                backgroundColor: ColorConst.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              child: Text(
                buttonTitle,
                style: context.textTheme.displayMedium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
