import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/common/app_theme.dart';
import 'package:todo_app/core/injection/injection.dart';
import 'package:todo_app/core/routes/app_router.dart';

void main(List<String> args) {
  configuredInjection();
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  TodoApp({super.key});

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'ExpenseWise',
          theme: AppTheme.theme,
          darkTheme: AppTheme.theme,
          routerDelegate: AutoRouterDelegate(router),
          routeInformationParser: router.defaultRouteParser(),
        );
      },
    );
  }
}
