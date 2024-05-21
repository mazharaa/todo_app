import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/domain/auth/i_auth_repository.dart';
import 'package:todo_app/domain/core/auth_failure.dart';
import 'package:todo_app/domain/user/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  final IAuthRepository _iAuthRepository;

  AuthCubit(this._iAuthRepository) : super(AuthState.initial());

  Future<void> registerUser(String name, String email, String password) async {
    emit(state.copyWith(failureOrSucced: none(), isLoading: true));

    final response = await _iAuthRepository.createUser(
      name: name,
      email: email,
      password: password,
    );

    emit(state.copyWith(failureOrSucced: optionOf(response), isLoading: false));
  }
}
