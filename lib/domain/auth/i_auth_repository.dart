import 'package:fpdart/fpdart.dart';
import 'package:todo_app/domain/core/auth_failure.dart';
import 'package:todo_app/domain/user/user.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, User>> createUser({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, User>> getUser({
    required String email,
  });

  Future<Either<AuthFailure, User>> login({
    required String email,
    required String password,
  });
}
