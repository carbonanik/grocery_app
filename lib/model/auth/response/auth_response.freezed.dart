// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String get jwt => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
          AuthResponse value, $Res Function(AuthResponse) then) =
      _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call({String jwt, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthResponseCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$_AuthResponseCopyWith(
          _$_AuthResponse value, $Res Function(_$_AuthResponse) then) =
      __$$_AuthResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String jwt, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthResponseCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$_AuthResponse>
    implements _$$_AuthResponseCopyWith<$Res> {
  __$$_AuthResponseCopyWithImpl(
      _$_AuthResponse _value, $Res Function(_$_AuthResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jwt = null,
    Object? user = null,
  }) {
    return _then(_$_AuthResponse(
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponse implements _AuthResponse {
  const _$_AuthResponse({required this.jwt, required this.user});

  factory _$_AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseFromJson(json);

  @override
  final String jwt;
  @override
  final User user;

  @override
  String toString() {
    return 'AuthResponse(jwt: $jwt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponse &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jwt, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      __$$_AuthResponseCopyWithImpl<_$_AuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseToJson(
      this,
    );
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse(
      {required final String jwt, required final User user}) = _$_AuthResponse;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthResponse.fromJson;

  @override
  String get jwt;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseCopyWith<_$_AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponse value) data,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponse value)? data,
    TResult? Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponse value)? data,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthResponseInitial value) initial,
    required TResult Function(_AuthResponseLoading value) loading,
    required TResult Function(_AuthResponseData value) data,
    required TResult Function(_AuthResponseError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthResponseInitial value)? initial,
    TResult? Function(_AuthResponseLoading value)? loading,
    TResult? Function(_AuthResponseData value)? data,
    TResult? Function(_AuthResponseError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthResponseInitial value)? initial,
    TResult Function(_AuthResponseLoading value)? loading,
    TResult Function(_AuthResponseData value)? data,
    TResult Function(_AuthResponseError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResultCopyWith<$Res> {
  factory $AuthResultCopyWith(
          AuthResult value, $Res Function(AuthResult) then) =
      _$AuthResultCopyWithImpl<$Res, AuthResult>;
}

/// @nodoc
class _$AuthResultCopyWithImpl<$Res, $Val extends AuthResult>
    implements $AuthResultCopyWith<$Res> {
  _$AuthResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthResponseInitialCopyWith<$Res> {
  factory _$$_AuthResponseInitialCopyWith(_$_AuthResponseInitial value,
          $Res Function(_$_AuthResponseInitial) then) =
      __$$_AuthResponseInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthResponseInitialCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$_AuthResponseInitial>
    implements _$$_AuthResponseInitialCopyWith<$Res> {
  __$$_AuthResponseInitialCopyWithImpl(_$_AuthResponseInitial _value,
      $Res Function(_$_AuthResponseInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthResponseInitial implements _AuthResponseInitial {
  const _$_AuthResponseInitial();

  @override
  String toString() {
    return 'AuthResult.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthResponseInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponse value) data,
    required TResult Function(Exception e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponse value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponse value)? data,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthResponseInitial value) initial,
    required TResult Function(_AuthResponseLoading value) loading,
    required TResult Function(_AuthResponseData value) data,
    required TResult Function(_AuthResponseError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthResponseInitial value)? initial,
    TResult? Function(_AuthResponseLoading value)? loading,
    TResult? Function(_AuthResponseData value)? data,
    TResult? Function(_AuthResponseError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthResponseInitial value)? initial,
    TResult Function(_AuthResponseLoading value)? loading,
    TResult Function(_AuthResponseData value)? data,
    TResult Function(_AuthResponseError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthResponseInitial implements AuthResult {
  const factory _AuthResponseInitial() = _$_AuthResponseInitial;
}

/// @nodoc
abstract class _$$_AuthResponseLoadingCopyWith<$Res> {
  factory _$$_AuthResponseLoadingCopyWith(_$_AuthResponseLoading value,
          $Res Function(_$_AuthResponseLoading) then) =
      __$$_AuthResponseLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthResponseLoadingCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$_AuthResponseLoading>
    implements _$$_AuthResponseLoadingCopyWith<$Res> {
  __$$_AuthResponseLoadingCopyWithImpl(_$_AuthResponseLoading _value,
      $Res Function(_$_AuthResponseLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthResponseLoading implements _AuthResponseLoading {
  const _$_AuthResponseLoading();

  @override
  String toString() {
    return 'AuthResult.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthResponseLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponse value) data,
    required TResult Function(Exception e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponse value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponse value)? data,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthResponseInitial value) initial,
    required TResult Function(_AuthResponseLoading value) loading,
    required TResult Function(_AuthResponseData value) data,
    required TResult Function(_AuthResponseError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthResponseInitial value)? initial,
    TResult? Function(_AuthResponseLoading value)? loading,
    TResult? Function(_AuthResponseData value)? data,
    TResult? Function(_AuthResponseError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthResponseInitial value)? initial,
    TResult Function(_AuthResponseLoading value)? loading,
    TResult Function(_AuthResponseData value)? data,
    TResult Function(_AuthResponseError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthResponseLoading implements AuthResult {
  const factory _AuthResponseLoading() = _$_AuthResponseLoading;
}

/// @nodoc
abstract class _$$_AuthResponseDataCopyWith<$Res> {
  factory _$$_AuthResponseDataCopyWith(
          _$_AuthResponseData value, $Res Function(_$_AuthResponseData) then) =
      __$$_AuthResponseDataCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponse value});

  $AuthResponseCopyWith<$Res> get value;
}

/// @nodoc
class __$$_AuthResponseDataCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$_AuthResponseData>
    implements _$$_AuthResponseDataCopyWith<$Res> {
  __$$_AuthResponseDataCopyWithImpl(
      _$_AuthResponseData _value, $Res Function(_$_AuthResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AuthResponseData(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthResponseCopyWith<$Res> get value {
    return $AuthResponseCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc

class _$_AuthResponseData implements _AuthResponseData {
  const _$_AuthResponseData(this.value);

  @override
  final AuthResponse value;

  @override
  String toString() {
    return 'AuthResult.data(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseData &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponseDataCopyWith<_$_AuthResponseData> get copyWith =>
      __$$_AuthResponseDataCopyWithImpl<_$_AuthResponseData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponse value) data,
    required TResult Function(Exception e) error,
  }) {
    return data(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponse value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return data?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponse value)? data,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthResponseInitial value) initial,
    required TResult Function(_AuthResponseLoading value) loading,
    required TResult Function(_AuthResponseData value) data,
    required TResult Function(_AuthResponseError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthResponseInitial value)? initial,
    TResult? Function(_AuthResponseLoading value)? loading,
    TResult? Function(_AuthResponseData value)? data,
    TResult? Function(_AuthResponseError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthResponseInitial value)? initial,
    TResult Function(_AuthResponseLoading value)? loading,
    TResult Function(_AuthResponseData value)? data,
    TResult Function(_AuthResponseError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _AuthResponseData implements AuthResult {
  const factory _AuthResponseData(final AuthResponse value) =
      _$_AuthResponseData;

  AuthResponse get value;
  @JsonKey(ignore: true)
  _$$_AuthResponseDataCopyWith<_$_AuthResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthResponseErrorCopyWith<$Res> {
  factory _$$_AuthResponseErrorCopyWith(_$_AuthResponseError value,
          $Res Function(_$_AuthResponseError) then) =
      __$$_AuthResponseErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$_AuthResponseErrorCopyWithImpl<$Res>
    extends _$AuthResultCopyWithImpl<$Res, _$_AuthResponseError>
    implements _$$_AuthResponseErrorCopyWith<$Res> {
  __$$_AuthResponseErrorCopyWithImpl(
      _$_AuthResponseError _value, $Res Function(_$_AuthResponseError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$_AuthResponseError(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_AuthResponseError implements _AuthResponseError {
  const _$_AuthResponseError(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'AuthResult.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseError &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponseErrorCopyWith<_$_AuthResponseError> get copyWith =>
      __$$_AuthResponseErrorCopyWithImpl<_$_AuthResponseError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponse value) data,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponse value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponse value)? data,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthResponseInitial value) initial,
    required TResult Function(_AuthResponseLoading value) loading,
    required TResult Function(_AuthResponseData value) data,
    required TResult Function(_AuthResponseError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthResponseInitial value)? initial,
    TResult? Function(_AuthResponseLoading value)? loading,
    TResult? Function(_AuthResponseData value)? data,
    TResult? Function(_AuthResponseError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthResponseInitial value)? initial,
    TResult Function(_AuthResponseLoading value)? loading,
    TResult Function(_AuthResponseData value)? data,
    TResult Function(_AuthResponseError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthResponseError implements AuthResult {
  const factory _AuthResponseError(final Exception e) = _$_AuthResponseError;

  Exception get e;
  @JsonKey(ignore: true)
  _$$_AuthResponseErrorCopyWith<_$_AuthResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}
