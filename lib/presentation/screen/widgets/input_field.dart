import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/common/color_const.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';
import 'package:todo_app/core/utils/ui_helper.dart';

class InputField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final bool separator;

  const InputField({
    super.key,
    required this.title,
    required this.obscureText,
    required this.separator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '     $title',
          style: context.textTheme.titleSmall?.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        TextFormField(
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          obscureText: obscureText,
          style: context.textTheme.titleSmall?.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w600,
            color: ColorConst.darkGrey,
          ),
          decoration: InputDecoration(
            contentPadding:
                UiHelper.padding(horizontal: 20.w, vertical: 15.7.h),
            filled: true,
            fillColor: ColorConst.whiteColor,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
        ),
        if (separator) UiHelper.verticalSpace(8.h)
      ],
    );
  }
}
