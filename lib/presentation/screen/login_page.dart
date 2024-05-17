import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/common/color_const.dart';
import 'package:todo_app/core/routes/app_router.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';
import 'package:todo_app/core/utils/ui_helper.dart';
import 'package:todo_app/presentation/screen/widgets/input_field.dart';
import 'package:todo_app/presentation/screen/widgets/welcome_background.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBackground(
        buttonTitle: 'Login',
        buttonOnPressed: () {},
        subtitle: 'Don\'t have an account?',
        subtitleLink: 'Sign Up',
        subtitleLinkOnTap: () => context.router.push(const RegistrationRoute()),
        child: Padding(
          padding: UiHelper.padding(top: 134.h, horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome Back!',
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: 22.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: UiHelper.setHeight(40.h),
              ),
              Image.asset(
                height: 180.h,
                width: 180.w,
                'assets/imgs/undraw_access_account_re_8spm.png',
              ),
              SizedBox(
                height: UiHelper.setHeight(40.h),
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
              SizedBox(
                height: 5.w,
              ),
              Padding(
                padding: UiHelper.padding(right: 10.w),
                child: Text(
                  'Forgot Password?',
                  style: context.textTheme.displaySmall?.copyWith(
                    fontSize: 15.sp,
                    color: ColorConst.primary,
                  ),
                  textAlign: TextAlign.right,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
