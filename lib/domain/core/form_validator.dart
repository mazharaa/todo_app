import 'package:todo_app/domain/core/form_failure.dart';
import 'package:fpdart/fpdart.dart';

class FormValidator {
  FormValidator._();

  static Either<FormFailure, Unit> emailValidator(String input) {
    const emailRegex =
        r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

    if (input.isEmpty) {
      return left(const FormFailure.empty());
    }

    if (!RegExp(emailRegex).hasMatch(input)) {
      return left(const FormFailure.invalidEmailAddress());
    }

    return right(unit);
  }

  static Either<FormFailure, Unit> emptyValidator(String val) {
    if (val.isEmpty) {
      return left(const FormFailure.empty());
    }

    return right(unit);
  }

  static Either<FormFailure, Unit> pwdValidator(String input) {
    const minCharRegex = r""".{8,}$""";
    const upperLowerCaseRegex = r"""^(?=.*?[A-Z])(?=.*?[a-z]).{8,}$""";
    const numberRegex = r"""^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$""";

    if (input.isEmpty) {
      return left(const FormFailure.empty());
    }

    if (!RegExp(minCharRegex).hasMatch(input)) {
      return left(const FormFailure.pwdCharLessMin());
    } else if (!RegExp(upperLowerCaseRegex).hasMatch(input)) {
      return left(const FormFailure.pwdUpperLowercase());
    } else if (!RegExp(numberRegex).hasMatch(input)) {
      return left(const FormFailure.pwdMinOneNumber());
    }

    return right(unit);
  }

  static Either<FormFailure, Unit> rePwdValidator(String input, String pwd) {
    if (input.isEmpty) {
      return left(const FormFailure.empty());
    }

    if (input != pwd) {
      return left(const FormFailure.pwdNotMatch());
    }

    return right(unit);
  }
}
