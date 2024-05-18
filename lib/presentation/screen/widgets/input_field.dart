import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/common/color_const.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';
import 'package:todo_app/core/utils/ui_helper.dart';

class InputField extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final bool isInvalid;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? errorMsg;
  final bool obscureText;

  const InputField({
    super.key,
    required this.title,
    this.controller,
    this.isInvalid = false,
    this.onChanged,
    this.validator,
    this.errorMsg,
    this.keyboardType,
    required this.obscureText,
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
        SizedBox(
          height: 50.h,
          child: TextFormField(
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            obscureText: obscureText,
            style: context.textTheme.titleSmall?.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: ColorConst.darkGrey,
            ),
            keyboardType: keyboardType,
            controller: controller,
            validator: validator,
            autovalidateMode: AutovalidateMode.always,
            cursorErrorColor: ColorConst.black,
            cursorColor: ColorConst.black,
            decoration: InputDecoration(
              contentPadding: UiHelper.padding(
                horizontal: 20.w,
              ),
              filled: true,
              fillColor: ColorConst.whiteColor,
              errorStyle: const TextStyle(
                height: 0.001,
                color: Colors.transparent,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorConst.blue),
                borderRadius: BorderRadius.circular(20.r),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorConst.red),
                borderRadius: BorderRadius.circular(20.r),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorConst.red),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
          ),
        ),
        if (errorMsg != null)
          Container(
            padding: UiHelper.padding(right: 15.w, vertical: 0),
            height: 12.h,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                errorMsg!,
                style: context.textTheme.labelSmall?.copyWith(
                  color: ColorConst.red,
                  fontSize: 8.5.sp,
                ),
              ),
            ),
          )
        else
          UiHelper.verticalSpace(12.h),
      ],
    );
  }
}
