import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.userAlreadyExist() = _UserAlreadyExist;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.emailAndPasswordNotMatch() =
      _EmailAndPasswordNotMatch;
}
