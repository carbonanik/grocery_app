// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Support {

 int get id; String get subject; String get message;
/// Create a copy of Support
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportCopyWith<Support> get copyWith => _$SupportCopyWithImpl<Support>(this as Support, _$identity);

  /// Serializes this Support to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Support&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subject,message);

@override
String toString() {
  return 'Support(id: $id, subject: $subject, message: $message)';
}


}

/// @nodoc
abstract mixin class $SupportCopyWith<$Res>  {
  factory $SupportCopyWith(Support value, $Res Function(Support) _then) = _$SupportCopyWithImpl;
@useResult
$Res call({
 int id, String subject, String message
});




}
/// @nodoc
class _$SupportCopyWithImpl<$Res>
    implements $SupportCopyWith<$Res> {
  _$SupportCopyWithImpl(this._self, this._then);

  final Support _self;
  final $Res Function(Support) _then;

/// Create a copy of Support
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? subject = null,Object? message = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Support].
extension SupportPatterns on Support {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Support value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Support() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Support value)  $default,){
final _that = this;
switch (_that) {
case _Support():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Support value)?  $default,){
final _that = this;
switch (_that) {
case _Support() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String subject,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Support() when $default != null:
return $default(_that.id,_that.subject,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String subject,  String message)  $default,) {final _that = this;
switch (_that) {
case _Support():
return $default(_that.id,_that.subject,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String subject,  String message)?  $default,) {final _that = this;
switch (_that) {
case _Support() when $default != null:
return $default(_that.id,_that.subject,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Support implements Support {
  const _Support({required this.id, required this.subject, required this.message});
  factory _Support.fromJson(Map<String, dynamic> json) => _$SupportFromJson(json);

@override final  int id;
@override final  String subject;
@override final  String message;

/// Create a copy of Support
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportCopyWith<_Support> get copyWith => __$SupportCopyWithImpl<_Support>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Support&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subject,message);

@override
String toString() {
  return 'Support(id: $id, subject: $subject, message: $message)';
}


}

/// @nodoc
abstract mixin class _$SupportCopyWith<$Res> implements $SupportCopyWith<$Res> {
  factory _$SupportCopyWith(_Support value, $Res Function(_Support) _then) = __$SupportCopyWithImpl;
@override @useResult
$Res call({
 int id, String subject, String message
});




}
/// @nodoc
class __$SupportCopyWithImpl<$Res>
    implements _$SupportCopyWith<$Res> {
  __$SupportCopyWithImpl(this._self, this._then);

  final _Support _self;
  final $Res Function(_Support) _then;

/// Create a copy of Support
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subject = null,Object? message = null,}) {
  return _then(_Support(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
