import 'package:bloc/bloc.dart';
import 'package:todo_app/domain/input_validation/input_validation_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_validation_state.dart';
part 'input_validation_cubit.freezed.dart';

class InputValidationCubit extends Cubit<InputValidationState> {
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController pwdController;
  late TextEditingController rePwdController;

  InputValidationCubit() : super(InputValidationState.initial()) {
    emailController = TextEditingController()
      ..addListener(() {
        inputEmail(emailController.text);
      });

    nameController = TextEditingController()
      ..addListener(() {
        inputName(nameController.text);
      });

    pwdController = TextEditingController()
      ..addListener(() {
        inputPwd(pwdController.text);
      });

    rePwdController = TextEditingController()
      ..addListener(() {
        inputRePwd(rePwdController.text);
      });
  }

  void inputEmail(String val) {
    emit(state.unmodified.copyWith.model(email: val));
  }

  void inputName(String val) {
    emit(state.unmodified.copyWith.model(name: val));
  }

  void inputPwd(String val) {
    emit(state.unmodified.copyWith.model(pwd: val));
  }

  void inputRePwd(String val) {
    emit(state.unmodified.copyWith.model(rePwd: val));
  }

  void submit() {
    if (state.model.failureOption.isNone()) {
      emit(state.copyWith(changeState: true));
    } else {
      emit(state.unmodified.copyWith(showError: true));
    }
  }

  void isFieldFocus(FocusNode focusNode, FieldType fieldType) {
    fieldType.when(
      none: () {},
      name: () {
        if (focusNode.hasFocus) {
          emit(state.unmodified.copyWith(nameFieldFocus: true));
        } else {
          emit(state.unmodified.copyWith(nameFieldFocus: false));
        }
      },
      email: () {
        if (focusNode.hasFocus) {
          emit(state.unmodified.copyWith(emailFieldFocus: true));
        } else {
          emit(state.unmodified.copyWith(emailFieldFocus: false));
        }
      },
      pwd: () {
        if (focusNode.hasFocus) {
          emit(state.unmodified.copyWith(pwdFieldFocus: true));
        } else {
          emit(state.unmodified.copyWith(pwdFieldFocus: false));
        }
      },
      rePwd: () {
        if (focusNode.hasFocus) {
          emit(state.unmodified.copyWith(rePwdFieldFocus: true));
        } else {
          emit(state.unmodified.copyWith(rePwdFieldFocus: false));
        }
      },
    );
  }

  void isFieldFilled(String val, FieldType fieldType) {
    fieldType.when(
      none: () {},
      name: () {
        if (val.isNotEmpty) {
          emit(state.unmodified.copyWith(nameFieldFilled: true));
        } else {
          emit(state.unmodified.copyWith(nameFieldFilled: false));
        }
      },
      email: () {
        if (val.isNotEmpty) {
          emit(state.unmodified.copyWith(emailFieldFilled: true));
        } else {
          emit(state.unmodified.copyWith(emailFieldFilled: false));
        }
      },
      pwd: () {
        if (val.isNotEmpty) {
          emit(state.unmodified.copyWith(pwdFieldFilled: true));
        } else {
          emit(state.unmodified.copyWith(pwdFieldFilled: false));
        }
      },
      rePwd: () {
        if (val.isNotEmpty) {
          emit(state.unmodified.copyWith(rePwdFieldFilled: true));
        } else {
          emit(state.unmodified.copyWith(rePwdFieldFilled: false));
        }
      },
    );
  }
}
