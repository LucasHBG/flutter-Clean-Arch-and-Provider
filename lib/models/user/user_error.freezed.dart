// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserError _$UserErrorFromJson(Map<String, dynamic> json) {
  return _UserError.fromJson(json);
}

/// @nodoc
mixin _$UserError {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserErrorCopyWith<UserError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserErrorCopyWith<$Res> {
  factory $UserErrorCopyWith(UserError value, $Res Function(UserError) then) =
      _$UserErrorCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class _$UserErrorCopyWithImpl<$Res> implements $UserErrorCopyWith<$Res> {
  _$UserErrorCopyWithImpl(this._value, this._then);

  final UserError _value;
  // ignore: unused_field
  final $Res Function(UserError) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserErrorCopyWith<$Res> implements $UserErrorCopyWith<$Res> {
  factory _$$_UserErrorCopyWith(
          _$_UserError value, $Res Function(_$_UserError) then) =
      __$$_UserErrorCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

/// @nodoc
class __$$_UserErrorCopyWithImpl<$Res> extends _$UserErrorCopyWithImpl<$Res>
    implements _$$_UserErrorCopyWith<$Res> {
  __$$_UserErrorCopyWithImpl(
      _$_UserError _value, $Res Function(_$_UserError) _then)
      : super(_value, (v) => _then(v as _$_UserError));

  @override
  _$_UserError get _value => super._value as _$_UserError;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_UserError(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserError implements _UserError {
  const _$_UserError({required this.code, required this.message});

  factory _$_UserError.fromJson(Map<String, dynamic> json) =>
      _$$_UserErrorFromJson(json);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'UserError(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserError &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_UserErrorCopyWith<_$_UserError> get copyWith =>
      __$$_UserErrorCopyWithImpl<_$_UserError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserErrorToJson(
      this,
    );
  }
}

abstract class _UserError implements UserError {
  const factory _UserError(
      {required final int code, required final String message}) = _$_UserError;

  factory _UserError.fromJson(Map<String, dynamic> json) =
      _$_UserError.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UserErrorCopyWith<_$_UserError> get copyWith =>
      throw _privateConstructorUsedError;
}
