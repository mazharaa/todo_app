import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo_app/domain/auth/i_auth_repository.dart';
import 'package:todo_app/domain/core/auth_failure.dart';
import 'package:todo_app/domain/user/user.dart';
import 'package:todo_app/infrastructure/core/database_helper.dart';

@LazySingleton(as: IAuthRepository)
class AuthReopsitory implements IAuthRepository {
  final DatabaseHelper _databaseHelper;

  AuthReopsitory(this._databaseHelper);

  @override
  Future<Either<AuthFailure, User>> createUser({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await _databaseHelper.insertUser(name, email, password);
      print('user registered');

      final response = await getUser(email: email);

      if (response.isRight()) {
        print('success load registered user');
        return response;
      } else {
        return response;
      }
    } on DatabaseException catch (e) {
      if (e.isUniqueConstraintError()) {
        return left(const AuthFailure.userAlreadyExist());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> getUser({required String email}) async {
    try {
      final response = await _databaseHelper.queryUser(email);

      if (response != null) {
        return right(response);
      } else {
        return left(const AuthFailure.userNotFound());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _databaseHelper.queryUserWithEmailAndPassword(
        email,
        password,
      );

      return response.fold(
        (l) => left(const AuthFailure.emailAndPasswordNotMatch()),
        (r) => right(r),
      );
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
