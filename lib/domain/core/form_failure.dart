import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_failure.freezed.dart';

@freezed
class FormFailure with _$FormFailure {
  const factory FormFailure.empty() = _FormFailureEmpty;
  const factory FormFailure.invalidEmailAddress() = _FormFailureEmailAddress;
  const factory FormFailure.pwdCharLessMin() = _FormFailurePwdCharLessMin;
  const factory FormFailure.pwdUpperLowercase() = _FormFailurePwdUpperLowercase;
  const factory FormFailure.pwdMinOneNumber() = _FormFailurePwdMinOneNumber;
  const factory FormFailure.pwdNotMatch() = _FormFailureReTypePwd;
}
