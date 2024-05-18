import 'package:todo_app/domain/core/form_failure.dart';
import 'package:todo_app/domain/core/form_validator.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_validation_entity.freezed.dart';

@freezed
class InputValidationEntity with _$InputValidationEntity {
  const InputValidationEntity._();

  const factory InputValidationEntity({
    required String name,
    required String email,
    required String pwd,
    required String rePwd,
  }) = _InputValidationEntity;

  factory InputValidationEntity.empty() => const InputValidationEntity(
        name: '',
        email: '',
        pwd: '',
        rePwd: '',
      );

  Option<FormFailure> get failureOption {
    return FormValidator.emptyValidator(name)
        .andThen(() => FormValidator.emailValidator(email))
        .andThen(() => FormValidator.pwdValidator(pwd))
        .fold(
          (failure) => some(failure),
          (_) => none(),
        );
  }

  String? get nameErrorMsg {
    return FormValidator.emptyValidator(name).fold(
      (failure) => failure.maybeWhen(
        orElse: () => null,
        empty: () => 'Name must not be empty',
      ),
      (data) => null,
    );
  }

  String? get emailErrorMsg {
    return FormValidator.emailValidator(email).fold(
      (failure) => failure.maybeWhen(
        orElse: () => null,
        empty: () => 'Email must not be empty',
        invalidEmailAddress: () => 'Invalid email address',
      ),
      (data) => null,
    );
  }

  String? get pwdErrorMsg {
    return FormValidator.pwdValidator(pwd).fold(
      (failure) => failure.maybeWhen(
        orElse: () => null,
        empty: () => 'Password must not be empty',
        pwdCharLessMin: () => 'At least 8 characters',
        pwdUpperLowercase: () => 'At least one lowercase and uppercase each',
        pwdMinOneNumber: () => 'At least one number',
      ),
      (data) => null,
    );
  }

  String? get rePwdErrorMsg {
    return FormValidator.rePwdValidator(rePwd, pwd).fold(
      (failure) => failure.maybeWhen(
        orElse: () => null,
        empty: () => 'Cannot be empty',
        pwdNotMatch: () => 'Password not match',
      ),
      (data) => null,
    );
  }
}
