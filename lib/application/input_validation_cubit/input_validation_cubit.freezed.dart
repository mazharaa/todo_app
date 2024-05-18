// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_validation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InputValidationState {
  InputValidationEntity get model => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get changeState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InputValidationStateCopyWith<InputValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputValidationStateCopyWith<$Res> {
  factory $InputValidationStateCopyWith(InputValidationState value,
          $Res Function(InputValidationState) then) =
      _$InputValidationStateCopyWithImpl<$Res, InputValidationState>;
  @useResult
  $Res call({InputValidationEntity model, bool showError, bool changeState});

  $InputValidationEntityCopyWith<$Res> get model;
}

/// @nodoc
class _$InputValidationStateCopyWithImpl<$Res,
        $Val extends InputValidationState>
    implements $InputValidationStateCopyWith<$Res> {
  _$InputValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
    Object? changeState = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InputValidationEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      changeState: null == changeState
          ? _value.changeState
          : changeState // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InputValidationEntityCopyWith<$Res> get model {
    return $InputValidationEntityCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InputValidationStateImplCopyWith<$Res>
    implements $InputValidationStateCopyWith<$Res> {
  factory _$$InputValidationStateImplCopyWith(_$InputValidationStateImpl value,
          $Res Function(_$InputValidationStateImpl) then) =
      __$$InputValidationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InputValidationEntity model, bool showError, bool changeState});

  @override
  $InputValidationEntityCopyWith<$Res> get model;
}

/// @nodoc
class __$$InputValidationStateImplCopyWithImpl<$Res>
    extends _$InputValidationStateCopyWithImpl<$Res, _$InputValidationStateImpl>
    implements _$$InputValidationStateImplCopyWith<$Res> {
  __$$InputValidationStateImplCopyWithImpl(_$InputValidationStateImpl _value,
      $Res Function(_$InputValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? showError = null,
    Object? changeState = null,
  }) {
    return _then(_$InputValidationStateImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as InputValidationEntity,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      changeState: null == changeState
          ? _value.changeState
          : changeState // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InputValidationStateImpl extends _InputValidationState {
  const _$InputValidationStateImpl(
      {required this.model, required this.showError, required this.changeState})
      : super._();

  @override
  final InputValidationEntity model;
  @override
  final bool showError;
  @override
  final bool changeState;

  @override
  String toString() {
    return 'InputValidationState(model: $model, showError: $showError, changeState: $changeState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputValidationStateImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.changeState, changeState) ||
                other.changeState == changeState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, showError, changeState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputValidationStateImplCopyWith<_$InputValidationStateImpl>
      get copyWith =>
          __$$InputValidationStateImplCopyWithImpl<_$InputValidationStateImpl>(
              this, _$identity);
}

abstract class _InputValidationState extends InputValidationState {
  const factory _InputValidationState(
      {required final InputValidationEntity model,
      required final bool showError,
      required final bool changeState}) = _$InputValidationStateImpl;
  const _InputValidationState._() : super._();

  @override
  InputValidationEntity get model;
  @override
  bool get showError;
  @override
  bool get changeState;
  @override
  @JsonKey(ignore: true)
  _$$InputValidationStateImplCopyWith<_$InputValidationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FieldType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() pwd,
    required TResult Function() rePwd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? name,
    TResult? Function()? email,
    TResult? Function()? pwd,
    TResult? Function()? rePwd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? pwd,
    TResult Function()? rePwd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Name value) name,
    required TResult Function(_Email value) email,
    required TResult Function(_Pwd value) pwd,
    required TResult Function(_RePwd value) rePwd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Name value)? name,
    TResult? Function(_Email value)? email,
    TResult? Function(_Pwd value)? pwd,
    TResult? Function(_RePwd value)? rePwd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Name value)? name,
    TResult Function(_Email value)? email,
    TResult Function(_Pwd value)? pwd,
    TResult Function(_RePwd value)? rePwd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldTypeCopyWith<$Res> {
  factory $FieldTypeCopyWith(FieldType value, $Res Function(FieldType) then) =
      _$FieldTypeCopyWithImpl<$Res, FieldType>;
}

/// @nodoc
class _$FieldTypeCopyWithImpl<$Res, $Val extends FieldType>
    implements $FieldTypeCopyWith<$Res> {
  _$FieldTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoneImplCopyWith<$Res> {
  factory _$$NoneImplCopyWith(
          _$NoneImpl value, $Res Function(_$NoneImpl) then) =
      __$$NoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoneImplCopyWithImpl<$Res>
    extends _$FieldTypeCopyWithImpl<$Res, _$NoneImpl>
    implements _$$NoneImplCopyWith<$Res> {
  __$$NoneImplCopyWithImpl(_$NoneImpl _value, $Res Function(_$NoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoneImpl implements _None {
  const _$NoneImpl();

  @override
  String toString() {
    return 'FieldType.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() pwd,
    required TResult Function() rePwd,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? name,
    TResult? Function()? email,
    TResult? Function()? pwd,
    TResult? Function()? rePwd,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? pwd,
    TResult Function()? rePwd,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Name value) name,
    required TResult Function(_Email value) email,
    required TResult Function(_Pwd value) pwd,
    required TResult Function(_RePwd value) rePwd,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Name value)? name,
    TResult? Function(_Email value)? email,
    TResult? Function(_Pwd value)? pwd,
    TResult? Function(_RePwd value)? rePwd,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Name value)? name,
    TResult Function(_Email value)? email,
    TResult Function(_Pwd value)? pwd,
    TResult Function(_RePwd value)? rePwd,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements FieldType {
  const factory _None() = _$NoneImpl;
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$FieldTypeCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NameImpl implements _Name {
  const _$NameImpl();

  @override
  String toString() {
    return 'FieldType.name()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() pwd,
    required TResult Function() rePwd,
  }) {
    return name();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? name,
    TResult? Function()? email,
    TResult? Function()? pwd,
    TResult? Function()? rePwd,
  }) {
    return name?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? pwd,
    TResult Function()? rePwd,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Name value) name,
    required TResult Function(_Email value) email,
    required TResult Function(_Pwd value) pwd,
    required TResult Function(_RePwd value) rePwd,
  }) {
    return name(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Name value)? name,
    TResult? Function(_Email value)? email,
    TResult? Function(_Pwd value)? pwd,
    TResult? Function(_RePwd value)? rePwd,
  }) {
    return name?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Name value)? name,
    TResult Function(_Email value)? email,
    TResult Function(_Pwd value)? pwd,
    TResult Function(_RePwd value)? rePwd,
    required TResult orElse(),
  }) {
    if (name != null) {
      return name(this);
    }
    return orElse();
  }
}

abstract class _Name implements FieldType {
  const factory _Name() = _$NameImpl;
}

/// @nodoc
abstract class _$$EmailImplCopyWith<$Res> {
  factory _$$EmailImplCopyWith(
          _$EmailImpl value, $Res Function(_$EmailImpl) then) =
      __$$EmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailImplCopyWithImpl<$Res>
    extends _$FieldTypeCopyWithImpl<$Res, _$EmailImpl>
    implements _$$EmailImplCopyWith<$Res> {
  __$$EmailImplCopyWithImpl(
      _$EmailImpl _value, $Res Function(_$EmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailImpl implements _Email {
  const _$EmailImpl();

  @override
  String toString() {
    return 'FieldType.email()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() pwd,
    required TResult Function() rePwd,
  }) {
    return email();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? name,
    TResult? Function()? email,
    TResult? Function()? pwd,
    TResult? Function()? rePwd,
  }) {
    return email?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? pwd,
    TResult Function()? rePwd,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Name value) name,
    required TResult Function(_Email value) email,
    required TResult Function(_Pwd value) pwd,
    required TResult Function(_RePwd value) rePwd,
  }) {
    return email(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Name value)? name,
    TResult? Function(_Email value)? email,
    TResult? Function(_Pwd value)? pwd,
    TResult? Function(_RePwd value)? rePwd,
  }) {
    return email?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Name value)? name,
    TResult Function(_Email value)? email,
    TResult Function(_Pwd value)? pwd,
    TResult Function(_RePwd value)? rePwd,
    required TResult orElse(),
  }) {
    if (email != null) {
      return email(this);
    }
    return orElse();
  }
}

abstract class _Email implements FieldType {
  const factory _Email() = _$EmailImpl;
}

/// @nodoc
abstract class _$$PwdImplCopyWith<$Res> {
  factory _$$PwdImplCopyWith(_$PwdImpl value, $Res Function(_$PwdImpl) then) =
      __$$PwdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PwdImplCopyWithImpl<$Res>
    extends _$FieldTypeCopyWithImpl<$Res, _$PwdImpl>
    implements _$$PwdImplCopyWith<$Res> {
  __$$PwdImplCopyWithImpl(_$PwdImpl _value, $Res Function(_$PwdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PwdImpl implements _Pwd {
  const _$PwdImpl();

  @override
  String toString() {
    return 'FieldType.pwd()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PwdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() pwd,
    required TResult Function() rePwd,
  }) {
    return pwd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? name,
    TResult? Function()? email,
    TResult? Function()? pwd,
    TResult? Function()? rePwd,
  }) {
    return pwd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? pwd,
    TResult Function()? rePwd,
    required TResult orElse(),
  }) {
    if (pwd != null) {
      return pwd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Name value) name,
    required TResult Function(_Email value) email,
    required TResult Function(_Pwd value) pwd,
    required TResult Function(_RePwd value) rePwd,
  }) {
    return pwd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Name value)? name,
    TResult? Function(_Email value)? email,
    TResult? Function(_Pwd value)? pwd,
    TResult? Function(_RePwd value)? rePwd,
  }) {
    return pwd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Name value)? name,
    TResult Function(_Email value)? email,
    TResult Function(_Pwd value)? pwd,
    TResult Function(_RePwd value)? rePwd,
    required TResult orElse(),
  }) {
    if (pwd != null) {
      return pwd(this);
    }
    return orElse();
  }
}

abstract class _Pwd implements FieldType {
  const factory _Pwd() = _$PwdImpl;
}

/// @nodoc
abstract class _$$RePwdImplCopyWith<$Res> {
  factory _$$RePwdImplCopyWith(
          _$RePwdImpl value, $Res Function(_$RePwdImpl) then) =
      __$$RePwdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RePwdImplCopyWithImpl<$Res>
    extends _$FieldTypeCopyWithImpl<$Res, _$RePwdImpl>
    implements _$$RePwdImplCopyWith<$Res> {
  __$$RePwdImplCopyWithImpl(
      _$RePwdImpl _value, $Res Function(_$RePwdImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RePwdImpl implements _RePwd {
  const _$RePwdImpl();

  @override
  String toString() {
    return 'FieldType.rePwd()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RePwdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() name,
    required TResult Function() email,
    required TResult Function() pwd,
    required TResult Function() rePwd,
  }) {
    return rePwd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? none,
    TResult? Function()? name,
    TResult? Function()? email,
    TResult? Function()? pwd,
    TResult? Function()? rePwd,
  }) {
    return rePwd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? name,
    TResult Function()? email,
    TResult Function()? pwd,
    TResult Function()? rePwd,
    required TResult orElse(),
  }) {
    if (rePwd != null) {
      return rePwd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Name value) name,
    required TResult Function(_Email value) email,
    required TResult Function(_Pwd value) pwd,
    required TResult Function(_RePwd value) rePwd,
  }) {
    return rePwd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_None value)? none,
    TResult? Function(_Name value)? name,
    TResult? Function(_Email value)? email,
    TResult? Function(_Pwd value)? pwd,
    TResult? Function(_RePwd value)? rePwd,
  }) {
    return rePwd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Name value)? name,
    TResult Function(_Email value)? email,
    TResult Function(_Pwd value)? pwd,
    TResult Function(_RePwd value)? rePwd,
    required TResult orElse(),
  }) {
    if (rePwd != null) {
      return rePwd(this);
    }
    return orElse();
  }
}

abstract class _RePwd implements FieldType {
  const factory _RePwd() = _$RePwdImpl;
}
