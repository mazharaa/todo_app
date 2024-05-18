import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/application/input_validation_cubit/input_validation_cubit.dart';
import 'package:todo_app/core/routes/app_router.dart';
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
      body: SingleChildScrollView(
        child: WelcomeBackground(
          buttonTitle: 'Register',
          subtitle: 'Already have an account?',
          subtitleLink: 'Sign In',
          child: Padding(
            padding: UiHelper.padding(top: 183.h, horizontal: 20.w),
            child: BlocBuilder<InputValidationCubit, InputValidationState>(
                builder: (context, state) {
              return Column(
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
                  InputField(
                    title: 'Full name',
                    obscureText: false,
                    validator: (_) => state.showNameError,
                    errorMsg: state.showNameError,
                    controller:
                        context.read<InputValidationCubit>().nameController,
                  ),
                  InputField(
                    title: 'Email',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    validator: (_) => state.showEmailError,
                    errorMsg: state.showEmailError,
                    controller:
                        context.read<InputValidationCubit>().emailController,
                  ),
                  InputField(
                    title: 'Password',
                    obscureText: true,
                    validator: (_) => state.showPwdError,
                    errorMsg: state.showPwdError,
                    controller:
                        context.read<InputValidationCubit>().pwdController,
                  ),
                  InputField(
                    title: 'Confirm Password',
                    obscureText: true,
                    validator: (_) => state.showRePwdError,
                    errorMsg: state.showRePwdError,
                    controller:
                        context.read<InputValidationCubit>().rePwdController,
                  )
                ],
              );
            }),
          ),
          buttonOnPressed: () {
            context.read<InputValidationCubit>().submit();
          },
          subtitleLinkOnTap: () {
            context.read<InputValidationCubit>().reset();
            context.router.push(const LoginRoute());
          },
        ),
      ),
    );
  }
}
