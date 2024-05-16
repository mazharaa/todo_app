import 'package:injectable/injectable.dart';
import 'package:todo_app/core/routes/app_router.dart';

@module
abstract class RegisterModule {
  @singleton
  AppRouter get appRouter => AppRouter();
}
