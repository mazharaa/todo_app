import 'package:auto_route/auto_route.dart';
import 'package:todo_app/presentation/screen/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
      ];
}
