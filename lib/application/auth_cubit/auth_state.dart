part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required Option<Either<AuthFailure, User>> failureOrSucced,
    required bool isLoading,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        failureOrSucced: none(),
        isLoading: false,
      );

  AuthState get unmodified => copyWith(isLoading: false);
}
