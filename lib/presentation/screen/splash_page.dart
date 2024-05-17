import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/routes/app_router.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';
import 'package:todo_app/presentation/screen/widgets/welcome_background.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBackground(
        buttonTitle: 'Get Started',
        child: Stack(
          children: [
            Positioned(
              top: 164.h,
              left: 93.w,
              child: Image.asset(
                height: 170.h,
                width: 187.16.w,
                'assets/imgs/undraw_mobile_ux_re_59hr.png',
              ),
            ),
            Positioned(
              top: 404.h,
              left: 37.w,
              child: SizedBox(
                height: 153.h,
                width: 301.w,
                child: Text(
                  'Get things done with TODO',
                  style: context.textTheme.displayLarge?.copyWith(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        buttonOnPressed: () => context.router.push(const RegistrationRoute()),
      ),
    );
  }
}
