import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:todo_app/application/auth_cubit/auth_cubit.dart';
import 'package:todo_app/application/input_validation_cubit/input_validation_cubit.dart';
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
    final emailController =
        context.read<InputValidationCubit>().emailController;
    final pwdController = context.read<InputValidationCubit>().pwdController;

    return Scaffold(
      body: Builder(
        builder: (context) {
          final validationState = context.watch<InputValidationCubit>().state;
          final authState = context.watch<AuthCubit>().state;
          return SingleChildScrollView(
            child: WelcomeBackground(
              buttonTitle: 'Login',
              subtitle: 'Don\'t have an account?',
              subtitleLink: 'Sign Up',
              child: Padding(
                padding: UiHelper.padding(top: 134.h, horizontal: 20.w),
                child: Stack(
                  children: [
                    Column(
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
                        InputField(
                          title: 'Email',
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          validator: (_) => validationState.showEmailError,
                          errorMsg: validationState.showEmailError,
                          controller: emailController,
                        ),
                        InputField(
                          title: 'Password',
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          validator: (_) => validationState.showEmailError,
                          errorMsg: validationState.showPwdError,
                          controller: pwdController,
                        ),
                        SizedBox(
                          height: 2.w,
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
                    authState.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
              ),
              buttonOnPressed: () async {
                context.read<InputValidationCubit>().submit();

                if (validationState.model.failureOption is None) {
                  await context.read<AuthCubit>().loginUser(
                        emailController.text,
                        pwdController.text,
                      );
                }
              },
              subtitleLinkOnTap: () {
                context.read<InputValidationCubit>().reset();
                context.router.push(const RegistrationRoute());
              },
            ),
          );
        },
      ),
    );
  }
}
