// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() emailAndPasswordNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? userAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? emailAndPasswordNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UserAlreadyExist value) userAlreadyExist,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_EmailAndPasswordNotMatch value)
        emailAndPasswordNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_EmailAndPasswordNotMatch value)?
        emailAndPasswordNotMatch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_EmailAndPasswordNotMatch value)? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() emailAndPasswordNotMatch,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? userAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? emailAndPasswordNotMatch,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UserAlreadyExist value) userAlreadyExist,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_EmailAndPasswordNotMatch value)
        emailAndPasswordNotMatch,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_EmailAndPasswordNotMatch value)?
        emailAndPasswordNotMatch,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_EmailAndPasswordNotMatch value)? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$UserAlreadyExistImplCopyWith<$Res> {
  factory _$$UserAlreadyExistImplCopyWith(_$UserAlreadyExistImpl value,
          $Res Function(_$UserAlreadyExistImpl) then) =
      __$$UserAlreadyExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAlreadyExistImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UserAlreadyExistImpl>
    implements _$$UserAlreadyExistImplCopyWith<$Res> {
  __$$UserAlreadyExistImplCopyWithImpl(_$UserAlreadyExistImpl _value,
      $Res Function(_$UserAlreadyExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserAlreadyExistImpl implements _UserAlreadyExist {
  const _$UserAlreadyExistImpl();

  @override
  String toString() {
    return 'AuthFailure.userAlreadyExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAlreadyExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() emailAndPasswordNotMatch,
  }) {
    return userAlreadyExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? userAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? emailAndPasswordNotMatch,
  }) {
    return userAlreadyExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (userAlreadyExist != null) {
      return userAlreadyExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UserAlreadyExist value) userAlreadyExist,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_EmailAndPasswordNotMatch value)
        emailAndPasswordNotMatch,
  }) {
    return userAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_EmailAndPasswordNotMatch value)?
        emailAndPasswordNotMatch,
  }) {
    return userAlreadyExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_EmailAndPasswordNotMatch value)? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (userAlreadyExist != null) {
      return userAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class _UserAlreadyExist implements AuthFailure {
  const factory _UserAlreadyExist() = _$UserAlreadyExistImpl;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
          _$UserNotFoundImpl value, $Res Function(_$UserNotFoundImpl) then) =
      __$$UserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
      _$UserNotFoundImpl _value, $Res Function(_$UserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFoundImpl implements _UserNotFound {
  const _$UserNotFoundImpl();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() emailAndPasswordNotMatch,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? userAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? emailAndPasswordNotMatch,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UserAlreadyExist value) userAlreadyExist,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_EmailAndPasswordNotMatch value)
        emailAndPasswordNotMatch,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_EmailAndPasswordNotMatch value)?
        emailAndPasswordNotMatch,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_EmailAndPasswordNotMatch value)? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements AuthFailure {
  const factory _UserNotFound() = _$UserNotFoundImpl;
}

/// @nodoc
abstract class _$$EmailAndPasswordNotMatchImplCopyWith<$Res> {
  factory _$$EmailAndPasswordNotMatchImplCopyWith(
          _$EmailAndPasswordNotMatchImpl value,
          $Res Function(_$EmailAndPasswordNotMatchImpl) then) =
      __$$EmailAndPasswordNotMatchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAndPasswordNotMatchImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$EmailAndPasswordNotMatchImpl>
    implements _$$EmailAndPasswordNotMatchImplCopyWith<$Res> {
  __$$EmailAndPasswordNotMatchImplCopyWithImpl(
      _$EmailAndPasswordNotMatchImpl _value,
      $Res Function(_$EmailAndPasswordNotMatchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAndPasswordNotMatchImpl implements _EmailAndPasswordNotMatch {
  const _$EmailAndPasswordNotMatchImpl();

  @override
  String toString() {
    return 'AuthFailure.emailAndPasswordNotMatch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAndPasswordNotMatchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() userAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() emailAndPasswordNotMatch,
  }) {
    return emailAndPasswordNotMatch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? userAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? emailAndPasswordNotMatch,
  }) {
    return emailAndPasswordNotMatch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? userAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (emailAndPasswordNotMatch != null) {
      return emailAndPasswordNotMatch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UserAlreadyExist value) userAlreadyExist,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_EmailAndPasswordNotMatch value)
        emailAndPasswordNotMatch,
  }) {
    return emailAndPasswordNotMatch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult? Function(_UserNotFound value)? userNotFound,
    TResult? Function(_EmailAndPasswordNotMatch value)?
        emailAndPasswordNotMatch,
  }) {
    return emailAndPasswordNotMatch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UserAlreadyExist value)? userAlreadyExist,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_EmailAndPasswordNotMatch value)? emailAndPasswordNotMatch,
    required TResult orElse(),
  }) {
    if (emailAndPasswordNotMatch != null) {
      return emailAndPasswordNotMatch(this);
    }
    return orElse();
  }
}

abstract class _EmailAndPasswordNotMatch implements AuthFailure {
  const factory _EmailAndPasswordNotMatch() = _$EmailAndPasswordNotMatchImpl;
}
