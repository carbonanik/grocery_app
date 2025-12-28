// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResultValue<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultValue<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultValue<$T>()';
}


}

/// @nodoc
class $ResultValueCopyWith<T,$Res>  {
$ResultValueCopyWith(ResultValue<T> _, $Res Function(ResultValue<T>) __);
}


/// Adds pattern-matching-related methods to [ResultValue].
extension ResultValuePatterns<T> on ResultValue<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ResultValueEmpty<T> value)?  empty,TResult Function( _ResultValueLoading<T> value)?  loading,TResult Function( _ResultValueData<T> value)?  data,TResult Function( _ResultValueError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResultValueEmpty() when empty != null:
return empty(_that);case _ResultValueLoading() when loading != null:
return loading(_that);case _ResultValueData() when data != null:
return data(_that);case _ResultValueError() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ResultValueEmpty<T> value)  empty,required TResult Function( _ResultValueLoading<T> value)  loading,required TResult Function( _ResultValueData<T> value)  data,required TResult Function( _ResultValueError<T> value)  error,}){
final _that = this;
switch (_that) {
case _ResultValueEmpty():
return empty(_that);case _ResultValueLoading():
return loading(_that);case _ResultValueData():
return data(_that);case _ResultValueError():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ResultValueEmpty<T> value)?  empty,TResult? Function( _ResultValueLoading<T> value)?  loading,TResult? Function( _ResultValueData<T> value)?  data,TResult? Function( _ResultValueError<T> value)?  error,}){
final _that = this;
switch (_that) {
case _ResultValueEmpty() when empty != null:
return empty(_that);case _ResultValueLoading() when loading != null:
return loading(_that);case _ResultValueData() when data != null:
return data(_that);case _ResultValueError() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function()?  loading,TResult Function( T value)?  data,TResult Function( Exception e)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResultValueEmpty() when empty != null:
return empty();case _ResultValueLoading() when loading != null:
return loading();case _ResultValueData() when data != null:
return data(_that.value);case _ResultValueError() when error != null:
return error(_that.e);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function()  loading,required TResult Function( T value)  data,required TResult Function( Exception e)  error,}) {final _that = this;
switch (_that) {
case _ResultValueEmpty():
return empty();case _ResultValueLoading():
return loading();case _ResultValueData():
return data(_that.value);case _ResultValueError():
return error(_that.e);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function()?  loading,TResult? Function( T value)?  data,TResult? Function( Exception e)?  error,}) {final _that = this;
switch (_that) {
case _ResultValueEmpty() when empty != null:
return empty();case _ResultValueLoading() when loading != null:
return loading();case _ResultValueData() when data != null:
return data(_that.value);case _ResultValueError() when error != null:
return error(_that.e);case _:
  return null;

}
}

}

/// @nodoc


class _ResultValueEmpty<T> implements ResultValue<T> {
  const _ResultValueEmpty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultValueEmpty<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultValue<$T>.empty()';
}


}




/// @nodoc


class _ResultValueLoading<T> implements ResultValue<T> {
  const _ResultValueLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultValueLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ResultValue<$T>.loading()';
}


}




/// @nodoc


class _ResultValueData<T> implements ResultValue<T> {
  const _ResultValueData(this.value);
  

 final  T value;

/// Create a copy of ResultValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultValueDataCopyWith<T, _ResultValueData<T>> get copyWith => __$ResultValueDataCopyWithImpl<T, _ResultValueData<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultValueData<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ResultValue<$T>.data(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ResultValueDataCopyWith<T,$Res> implements $ResultValueCopyWith<T, $Res> {
  factory _$ResultValueDataCopyWith(_ResultValueData<T> value, $Res Function(_ResultValueData<T>) _then) = __$ResultValueDataCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class __$ResultValueDataCopyWithImpl<T,$Res>
    implements _$ResultValueDataCopyWith<T, $Res> {
  __$ResultValueDataCopyWithImpl(this._self, this._then);

  final _ResultValueData<T> _self;
  final $Res Function(_ResultValueData<T>) _then;

/// Create a copy of ResultValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_ResultValueData<T>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _ResultValueError<T> implements ResultValue<T> {
  const _ResultValueError(this.e);
  

 final  Exception e;

/// Create a copy of ResultValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResultValueErrorCopyWith<T, _ResultValueError<T>> get copyWith => __$ResultValueErrorCopyWithImpl<T, _ResultValueError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResultValueError<T>&&(identical(other.e, e) || other.e == e));
}


@override
int get hashCode => Object.hash(runtimeType,e);

@override
String toString() {
  return 'ResultValue<$T>.error(e: $e)';
}


}

/// @nodoc
abstract mixin class _$ResultValueErrorCopyWith<T,$Res> implements $ResultValueCopyWith<T, $Res> {
  factory _$ResultValueErrorCopyWith(_ResultValueError<T> value, $Res Function(_ResultValueError<T>) _then) = __$ResultValueErrorCopyWithImpl;
@useResult
$Res call({
 Exception e
});




}
/// @nodoc
class __$ResultValueErrorCopyWithImpl<T,$Res>
    implements _$ResultValueErrorCopyWith<T, $Res> {
  __$ResultValueErrorCopyWithImpl(this._self, this._then);

  final _ResultValueError<T> _self;
  final $Res Function(_ResultValueError<T>) _then;

/// Create a copy of ResultValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? e = null,}) {
  return _then(_ResultValueError<T>(
null == e ? _self.e : e // ignore: cast_nullable_to_non_nullable
as Exception,
  ));
}


}

// dart format on
