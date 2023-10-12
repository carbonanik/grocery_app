// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultValue<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T value)? data,
    TResult? Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultValueEmpty<T> value) empty,
    required TResult Function(_ResultValueLoading<T> value) loading,
    required TResult Function(_ResultValueData<T> value) data,
    required TResult Function(_ResultValueError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultValueEmpty<T> value)? empty,
    TResult? Function(_ResultValueLoading<T> value)? loading,
    TResult? Function(_ResultValueData<T> value)? data,
    TResult? Function(_ResultValueError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultValueEmpty<T> value)? empty,
    TResult Function(_ResultValueLoading<T> value)? loading,
    TResult Function(_ResultValueData<T> value)? data,
    TResult Function(_ResultValueError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultValueCopyWith<T, $Res> {
  factory $ResultValueCopyWith(
          ResultValue<T> value, $Res Function(ResultValue<T>) then) =
      _$ResultValueCopyWithImpl<T, $Res, ResultValue<T>>;
}

/// @nodoc
class _$ResultValueCopyWithImpl<T, $Res, $Val extends ResultValue<T>>
    implements $ResultValueCopyWith<T, $Res> {
  _$ResultValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultValueEmptyImplCopyWith<T, $Res> {
  factory _$$ResultValueEmptyImplCopyWith(_$ResultValueEmptyImpl<T> value,
          $Res Function(_$ResultValueEmptyImpl<T>) then) =
      __$$ResultValueEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultValueEmptyImplCopyWithImpl<T, $Res>
    extends _$ResultValueCopyWithImpl<T, $Res, _$ResultValueEmptyImpl<T>>
    implements _$$ResultValueEmptyImplCopyWith<T, $Res> {
  __$$ResultValueEmptyImplCopyWithImpl(_$ResultValueEmptyImpl<T> _value,
      $Res Function(_$ResultValueEmptyImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultValueEmptyImpl<T> implements _ResultValueEmpty<T> {
  const _$ResultValueEmptyImpl();

  @override
  String toString() {
    return 'ResultValue<$T>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultValueEmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Exception e) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(T value)? data,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultValueEmpty<T> value) empty,
    required TResult Function(_ResultValueLoading<T> value) loading,
    required TResult Function(_ResultValueData<T> value) data,
    required TResult Function(_ResultValueError<T> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultValueEmpty<T> value)? empty,
    TResult? Function(_ResultValueLoading<T> value)? loading,
    TResult? Function(_ResultValueData<T> value)? data,
    TResult? Function(_ResultValueError<T> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultValueEmpty<T> value)? empty,
    TResult Function(_ResultValueLoading<T> value)? loading,
    TResult Function(_ResultValueData<T> value)? data,
    TResult Function(_ResultValueError<T> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ResultValueEmpty<T> implements ResultValue<T> {
  const factory _ResultValueEmpty() = _$ResultValueEmptyImpl<T>;
}

/// @nodoc
abstract class _$$ResultValueLoadingImplCopyWith<T, $Res> {
  factory _$$ResultValueLoadingImplCopyWith(_$ResultValueLoadingImpl<T> value,
          $Res Function(_$ResultValueLoadingImpl<T>) then) =
      __$$ResultValueLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultValueLoadingImplCopyWithImpl<T, $Res>
    extends _$ResultValueCopyWithImpl<T, $Res, _$ResultValueLoadingImpl<T>>
    implements _$$ResultValueLoadingImplCopyWith<T, $Res> {
  __$$ResultValueLoadingImplCopyWithImpl(_$ResultValueLoadingImpl<T> _value,
      $Res Function(_$ResultValueLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultValueLoadingImpl<T> implements _ResultValueLoading<T> {
  const _$ResultValueLoadingImpl();

  @override
  String toString() {
    return 'ResultValue<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultValueLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Exception e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(T value)? data,
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
    required TResult Function(_ResultValueEmpty<T> value) empty,
    required TResult Function(_ResultValueLoading<T> value) loading,
    required TResult Function(_ResultValueData<T> value) data,
    required TResult Function(_ResultValueError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultValueEmpty<T> value)? empty,
    TResult? Function(_ResultValueLoading<T> value)? loading,
    TResult? Function(_ResultValueData<T> value)? data,
    TResult? Function(_ResultValueError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultValueEmpty<T> value)? empty,
    TResult Function(_ResultValueLoading<T> value)? loading,
    TResult Function(_ResultValueData<T> value)? data,
    TResult Function(_ResultValueError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ResultValueLoading<T> implements ResultValue<T> {
  const factory _ResultValueLoading() = _$ResultValueLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ResultValueDataImplCopyWith<T, $Res> {
  factory _$$ResultValueDataImplCopyWith(_$ResultValueDataImpl<T> value,
          $Res Function(_$ResultValueDataImpl<T>) then) =
      __$$ResultValueDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$ResultValueDataImplCopyWithImpl<T, $Res>
    extends _$ResultValueCopyWithImpl<T, $Res, _$ResultValueDataImpl<T>>
    implements _$$ResultValueDataImplCopyWith<T, $Res> {
  __$$ResultValueDataImplCopyWithImpl(_$ResultValueDataImpl<T> _value,
      $Res Function(_$ResultValueDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ResultValueDataImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultValueDataImpl<T> implements _ResultValueData<T> {
  const _$ResultValueDataImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ResultValue<$T>.data(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultValueDataImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultValueDataImplCopyWith<T, _$ResultValueDataImpl<T>> get copyWith =>
      __$$ResultValueDataImplCopyWithImpl<T, _$ResultValueDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Exception e) error,
  }) {
    return data(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return data?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(T value)? data,
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
    required TResult Function(_ResultValueEmpty<T> value) empty,
    required TResult Function(_ResultValueLoading<T> value) loading,
    required TResult Function(_ResultValueData<T> value) data,
    required TResult Function(_ResultValueError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultValueEmpty<T> value)? empty,
    TResult? Function(_ResultValueLoading<T> value)? loading,
    TResult? Function(_ResultValueData<T> value)? data,
    TResult? Function(_ResultValueError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultValueEmpty<T> value)? empty,
    TResult Function(_ResultValueLoading<T> value)? loading,
    TResult Function(_ResultValueData<T> value)? data,
    TResult Function(_ResultValueError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _ResultValueData<T> implements ResultValue<T> {
  const factory _ResultValueData(final T value) = _$ResultValueDataImpl<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$ResultValueDataImplCopyWith<T, _$ResultValueDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultValueErrorImplCopyWith<T, $Res> {
  factory _$$ResultValueErrorImplCopyWith(_$ResultValueErrorImpl<T> value,
          $Res Function(_$ResultValueErrorImpl<T>) then) =
      __$$ResultValueErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$ResultValueErrorImplCopyWithImpl<T, $Res>
    extends _$ResultValueCopyWithImpl<T, $Res, _$ResultValueErrorImpl<T>>
    implements _$$ResultValueErrorImplCopyWith<T, $Res> {
  __$$ResultValueErrorImplCopyWithImpl(_$ResultValueErrorImpl<T> _value,
      $Res Function(_$ResultValueErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$ResultValueErrorImpl<T>(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ResultValueErrorImpl<T> implements _ResultValueError<T> {
  const _$ResultValueErrorImpl(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'ResultValue<$T>.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultValueErrorImpl<T> &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultValueErrorImplCopyWith<T, _$ResultValueErrorImpl<T>> get copyWith =>
      __$$ResultValueErrorImplCopyWithImpl<T, _$ResultValueErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(T value) data,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(T value)? data,
    TResult? Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(T value)? data,
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
    required TResult Function(_ResultValueEmpty<T> value) empty,
    required TResult Function(_ResultValueLoading<T> value) loading,
    required TResult Function(_ResultValueData<T> value) data,
    required TResult Function(_ResultValueError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultValueEmpty<T> value)? empty,
    TResult? Function(_ResultValueLoading<T> value)? loading,
    TResult? Function(_ResultValueData<T> value)? data,
    TResult? Function(_ResultValueError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultValueEmpty<T> value)? empty,
    TResult Function(_ResultValueLoading<T> value)? loading,
    TResult Function(_ResultValueData<T> value)? data,
    TResult Function(_ResultValueError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ResultValueError<T> implements ResultValue<T> {
  const factory _ResultValueError(final Exception e) =
      _$ResultValueErrorImpl<T>;

  Exception get e;
  @JsonKey(ignore: true)
  _$$ResultValueErrorImplCopyWith<T, _$ResultValueErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
