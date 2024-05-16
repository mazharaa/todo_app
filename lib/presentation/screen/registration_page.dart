import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';
import 'package:todo_app/core/utils/ui_helper.dart';
import 'package:todo_app/presentation/screen/widgets/input_field.dart';
import 'package:todo_app/presentation/screen/widgets/welcome_background.dart';

@RoutePage()
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBackground(
        buttonTitle: 'Register',
        buttonOnPressed: () {},
        child: Padding(
          padding: UiHelper.padding(top: 183.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome Onboard!',
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: 22.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: UiHelper.setHeight(13.h),
              ),
              Text(
                'Lets help you in completing your tasks',
                style: context.textTheme.titleSmall?.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: UiHelper.setHeight(50.h),
              ),
              const InputField(
                title: 'Full name',
                obscureText: false,
                separator: true,
              ),
              const InputField(
                title: 'Email',
                obscureText: false,
                separator: true,
              ),
              const InputField(
                title: 'Password',
                obscureText: true,
                separator: true,
              ),
              const InputField(
                title: 'Confirm Password',
                obscureText: true,
                separator: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
