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

  void reset() {
    nameController.clear();
    emailController.clear();
    pwdController.clear();
    rePwdController.clear();
    emit(state.unmodified.copyWith(showError: false));
  }
}
