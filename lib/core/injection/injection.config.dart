// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todo_app/application/auth_cubit/auth_cubit.dart' as _i7;
import 'package:todo_app/core/routes/app_router.dart' as _i3;
import 'package:todo_app/core/utils/register_module.dart' as _i8;
import 'package:todo_app/domain/auth/i_auth_repository.dart' as _i5;
import 'package:todo_app/infrastructure/auth/auth_reopsitory.dart' as _i6;
import 'package:todo_app/infrastructure/core/database_helper.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i4.DatabaseHelper>(() => _i4.DatabaseHelper());
    gh.lazySingleton<_i5.IAuthRepository>(
        () => _i6.AuthReopsitory(gh<_i4.DatabaseHelper>()));
    gh.factory<_i7.AuthCubit>(() => _i7.AuthCubit(gh<_i5.IAuthRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i8.RegisterModule {}
