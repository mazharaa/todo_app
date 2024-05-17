import 'package:auto_route/auto_route.dart';
import 'package:todo_app/presentation/screen/login_page.dart';
import 'package:todo_app/presentation/screen/registration_page.dart';
import 'package:todo_app/presentation/screen/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: RegistrationRoute.page),
        AutoRoute(page: LoginRoute.page),
      ];
}
