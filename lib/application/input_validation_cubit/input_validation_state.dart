part of 'input_validation_cubit.dart';

@freezed
class InputValidationState with _$InputValidationState {
  const InputValidationState._();

  const factory InputValidationState({
    required InputValidationEntity model,
    required bool showError,
    required bool changeState,
    required bool nameFieldFocus,
    required bool emailFieldFocus,
    required bool pwdFieldFocus,
    required bool rePwdFieldFocus,
    required bool nameFieldFilled,
    required bool emailFieldFilled,
    required bool pwdFieldFilled,
    required bool rePwdFieldFilled,
  }) = _InputValidationState;

  factory InputValidationState.initial() => InputValidationState(
        model: InputValidationEntity.empty(),
        showError: false,
        changeState: false,
        nameFieldFocus: false,
        emailFieldFocus: false,
        pwdFieldFocus: false,
        rePwdFieldFocus: false,
        nameFieldFilled: false,
        emailFieldFilled: false,
        pwdFieldFilled: false,
        rePwdFieldFilled: false,
      );

  InputValidationState get unmodified => copyWith(changeState: false);

  String? get showEmailError => showError ? model.emailErrorMsg : null;
  String? get showNameError => showError ? model.nameErrorMsg : null;
  String? get showPwdError => showError ? model.pwdErrorMsg : null;
  String? get showRePwdError => showError ? model.rePwdErrorMsg : null;
}

@freezed
class FieldType with _$FieldType {
  const factory FieldType.none() = _None;
  const factory FieldType.name() = _Name;
  const factory FieldType.email() = _Email;
  const factory FieldType.pwd() = _Pwd;
  const factory FieldType.rePwd() = _RePwd;
}
