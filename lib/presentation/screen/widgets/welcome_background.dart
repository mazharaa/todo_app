import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/common/color_const.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';

class WelcomeBackground extends StatelessWidget {
  final String buttonTitle;
  final String? subtitle;
  final String? subtitleLink;
  final VoidCallback buttonOnPressed;
  final GestureTapCallback? subtitleLinkOnTap;
  final Widget child;

  const WelcomeBackground({
    super.key,
    required this.buttonTitle,
    this.subtitle = '',
    this.subtitleLink = '',
    required this.buttonOnPressed,
    this.subtitleLinkOnTap,
    required this.child,
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
                style: context.textTheme.displayLarge,
              ),
            ),
          ),
          if (subtitle!.isNotEmpty && subtitleLink!.isNotEmpty)
            Positioned(
              top: 738.h,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${subtitle!} ',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: subtitleLinkOnTap,
                    child: Text(
                      subtitleLink!,
                      style: context.textTheme.displaySmall?.copyWith(
                        fontSize: 15.sp,
                        color: ColorConst.primary,
                      ),
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
