// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateSupportDto {

 String get subject; String get message; UserInSupportDto get user;
/// Create a copy of CreateSupportDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSupportDtoCopyWith<CreateSupportDto> get copyWith => _$CreateSupportDtoCopyWithImpl<CreateSupportDto>(this as CreateSupportDto, _$identity);

  /// Serializes this CreateSupportDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSupportDto&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.message, message) || other.message == message)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,message,user);

@override
String toString() {
  return 'CreateSupportDto(subject: $subject, message: $message, user: $user)';
}


}

/// @nodoc
abstract mixin class $CreateSupportDtoCopyWith<$Res>  {
  factory $CreateSupportDtoCopyWith(CreateSupportDto value, $Res Function(CreateSupportDto) _then) = _$CreateSupportDtoCopyWithImpl;
@useResult
$Res call({
 String subject, String message, UserInSupportDto user
});


$UserInSupportDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$CreateSupportDtoCopyWithImpl<$Res>
    implements $CreateSupportDtoCopyWith<$Res> {
  _$CreateSupportDtoCopyWithImpl(this._self, this._then);

  final CreateSupportDto _self;
  final $Res Function(CreateSupportDto) _then;

/// Create a copy of CreateSupportDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subject = null,Object? message = null,Object? user = null,}) {
  return _then(_self.copyWith(
subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInSupportDto,
  ));
}
/// Create a copy of CreateSupportDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInSupportDtoCopyWith<$Res> get user {
  
  return $UserInSupportDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateSupportDto].
extension CreateSupportDtoPatterns on CreateSupportDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSupportDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSupportDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSupportDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateSupportDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSupportDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSupportDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subject,  String message,  UserInSupportDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSupportDto() when $default != null:
return $default(_that.subject,_that.message,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subject,  String message,  UserInSupportDto user)  $default,) {final _that = this;
switch (_that) {
case _CreateSupportDto():
return $default(_that.subject,_that.message,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subject,  String message,  UserInSupportDto user)?  $default,) {final _that = this;
switch (_that) {
case _CreateSupportDto() when $default != null:
return $default(_that.subject,_that.message,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSupportDto implements CreateSupportDto {
  const _CreateSupportDto({required this.subject, required this.message, required this.user});
  factory _CreateSupportDto.fromJson(Map<String, dynamic> json) => _$CreateSupportDtoFromJson(json);

@override final  String subject;
@override final  String message;
@override final  UserInSupportDto user;

/// Create a copy of CreateSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSupportDtoCopyWith<_CreateSupportDto> get copyWith => __$CreateSupportDtoCopyWithImpl<_CreateSupportDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSupportDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSupportDto&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.message, message) || other.message == message)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,message,user);

@override
String toString() {
  return 'CreateSupportDto(subject: $subject, message: $message, user: $user)';
}


}

/// @nodoc
abstract mixin class _$CreateSupportDtoCopyWith<$Res> implements $CreateSupportDtoCopyWith<$Res> {
  factory _$CreateSupportDtoCopyWith(_CreateSupportDto value, $Res Function(_CreateSupportDto) _then) = __$CreateSupportDtoCopyWithImpl;
@override @useResult
$Res call({
 String subject, String message, UserInSupportDto user
});


@override $UserInSupportDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$CreateSupportDtoCopyWithImpl<$Res>
    implements _$CreateSupportDtoCopyWith<$Res> {
  __$CreateSupportDtoCopyWithImpl(this._self, this._then);

  final _CreateSupportDto _self;
  final $Res Function(_CreateSupportDto) _then;

/// Create a copy of CreateSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subject = null,Object? message = null,Object? user = null,}) {
  return _then(_CreateSupportDto(
subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInSupportDto,
  ));
}

/// Create a copy of CreateSupportDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInSupportDtoCopyWith<$Res> get user {
  
  return $UserInSupportDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserInSupportDto {

 List<int> get connect;
/// Create a copy of UserInSupportDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInSupportDtoCopyWith<UserInSupportDto> get copyWith => _$UserInSupportDtoCopyWithImpl<UserInSupportDto>(this as UserInSupportDto, _$identity);

  /// Serializes this UserInSupportDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInSupportDto&&const DeepCollectionEquality().equals(other.connect, connect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(connect));

@override
String toString() {
  return 'UserInSupportDto(connect: $connect)';
}


}

/// @nodoc
abstract mixin class $UserInSupportDtoCopyWith<$Res>  {
  factory $UserInSupportDtoCopyWith(UserInSupportDto value, $Res Function(UserInSupportDto) _then) = _$UserInSupportDtoCopyWithImpl;
@useResult
$Res call({
 List<int> connect
});




}
/// @nodoc
class _$UserInSupportDtoCopyWithImpl<$Res>
    implements $UserInSupportDtoCopyWith<$Res> {
  _$UserInSupportDtoCopyWithImpl(this._self, this._then);

  final UserInSupportDto _self;
  final $Res Function(UserInSupportDto) _then;

/// Create a copy of UserInSupportDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connect = null,}) {
  return _then(_self.copyWith(
connect: null == connect ? _self.connect : connect // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInSupportDto].
extension UserInSupportDtoPatterns on UserInSupportDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInSupportDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInSupportDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInSupportDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInSupportDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInSupportDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInSupportDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int> connect)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInSupportDto() when $default != null:
return $default(_that.connect);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int> connect)  $default,) {final _that = this;
switch (_that) {
case _UserInSupportDto():
return $default(_that.connect);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int> connect)?  $default,) {final _that = this;
switch (_that) {
case _UserInSupportDto() when $default != null:
return $default(_that.connect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInSupportDto implements UserInSupportDto {
  const _UserInSupportDto({required final  List<int> connect}): _connect = connect;
  factory _UserInSupportDto.fromJson(Map<String, dynamic> json) => _$UserInSupportDtoFromJson(json);

 final  List<int> _connect;
@override List<int> get connect {
  if (_connect is EqualUnmodifiableListView) return _connect;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connect);
}


/// Create a copy of UserInSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInSupportDtoCopyWith<_UserInSupportDto> get copyWith => __$UserInSupportDtoCopyWithImpl<_UserInSupportDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInSupportDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInSupportDto&&const DeepCollectionEquality().equals(other._connect, _connect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_connect));

@override
String toString() {
  return 'UserInSupportDto(connect: $connect)';
}


}

/// @nodoc
abstract mixin class _$UserInSupportDtoCopyWith<$Res> implements $UserInSupportDtoCopyWith<$Res> {
  factory _$UserInSupportDtoCopyWith(_UserInSupportDto value, $Res Function(_UserInSupportDto) _then) = __$UserInSupportDtoCopyWithImpl;
@override @useResult
$Res call({
 List<int> connect
});




}
/// @nodoc
class __$UserInSupportDtoCopyWithImpl<$Res>
    implements _$UserInSupportDtoCopyWith<$Res> {
  __$UserInSupportDtoCopyWithImpl(this._self, this._then);

  final _UserInSupportDto _self;
  final $Res Function(_UserInSupportDto) _then;

/// Create a copy of UserInSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connect = null,}) {
  return _then(_UserInSupportDto(
connect: null == connect ? _self._connect : connect // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$ReadSupportDto {

 int get id; ReadSupportAttributeDto get attributes;
/// Create a copy of ReadSupportDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadSupportDtoCopyWith<ReadSupportDto> get copyWith => _$ReadSupportDtoCopyWithImpl<ReadSupportDto>(this as ReadSupportDto, _$identity);

  /// Serializes this ReadSupportDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadSupportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'ReadSupportDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $ReadSupportDtoCopyWith<$Res>  {
  factory $ReadSupportDtoCopyWith(ReadSupportDto value, $Res Function(ReadSupportDto) _then) = _$ReadSupportDtoCopyWithImpl;
@useResult
$Res call({
 int id, ReadSupportAttributeDto attributes
});


$ReadSupportAttributeDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class _$ReadSupportDtoCopyWithImpl<$Res>
    implements $ReadSupportDtoCopyWith<$Res> {
  _$ReadSupportDtoCopyWithImpl(this._self, this._then);

  final ReadSupportDto _self;
  final $Res Function(ReadSupportDto) _then;

/// Create a copy of ReadSupportDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ReadSupportAttributeDto,
  ));
}
/// Create a copy of ReadSupportDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReadSupportAttributeDtoCopyWith<$Res> get attributes {
  
  return $ReadSupportAttributeDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReadSupportDto].
extension ReadSupportDtoPatterns on ReadSupportDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReadSupportDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReadSupportDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReadSupportDto value)  $default,){
final _that = this;
switch (_that) {
case _ReadSupportDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReadSupportDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReadSupportDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  ReadSupportAttributeDto attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReadSupportDto() when $default != null:
return $default(_that.id,_that.attributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  ReadSupportAttributeDto attributes)  $default,) {final _that = this;
switch (_that) {
case _ReadSupportDto():
return $default(_that.id,_that.attributes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  ReadSupportAttributeDto attributes)?  $default,) {final _that = this;
switch (_that) {
case _ReadSupportDto() when $default != null:
return $default(_that.id,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReadSupportDto implements ReadSupportDto {
  const _ReadSupportDto({required this.id, required this.attributes});
  factory _ReadSupportDto.fromJson(Map<String, dynamic> json) => _$ReadSupportDtoFromJson(json);

@override final  int id;
@override final  ReadSupportAttributeDto attributes;

/// Create a copy of ReadSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadSupportDtoCopyWith<_ReadSupportDto> get copyWith => __$ReadSupportDtoCopyWithImpl<_ReadSupportDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReadSupportDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadSupportDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'ReadSupportDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$ReadSupportDtoCopyWith<$Res> implements $ReadSupportDtoCopyWith<$Res> {
  factory _$ReadSupportDtoCopyWith(_ReadSupportDto value, $Res Function(_ReadSupportDto) _then) = __$ReadSupportDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, ReadSupportAttributeDto attributes
});


@override $ReadSupportAttributeDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class __$ReadSupportDtoCopyWithImpl<$Res>
    implements _$ReadSupportDtoCopyWith<$Res> {
  __$ReadSupportDtoCopyWithImpl(this._self, this._then);

  final _ReadSupportDto _self;
  final $Res Function(_ReadSupportDto) _then;

/// Create a copy of ReadSupportDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_ReadSupportDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as ReadSupportAttributeDto,
  ));
}

/// Create a copy of ReadSupportDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReadSupportAttributeDtoCopyWith<$Res> get attributes {
  
  return $ReadSupportAttributeDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$ReadSupportAttributeDto {

 String get subject; String get message;
/// Create a copy of ReadSupportAttributeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReadSupportAttributeDtoCopyWith<ReadSupportAttributeDto> get copyWith => _$ReadSupportAttributeDtoCopyWithImpl<ReadSupportAttributeDto>(this as ReadSupportAttributeDto, _$identity);

  /// Serializes this ReadSupportAttributeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReadSupportAttributeDto&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,message);

@override
String toString() {
  return 'ReadSupportAttributeDto(subject: $subject, message: $message)';
}


}

/// @nodoc
abstract mixin class $ReadSupportAttributeDtoCopyWith<$Res>  {
  factory $ReadSupportAttributeDtoCopyWith(ReadSupportAttributeDto value, $Res Function(ReadSupportAttributeDto) _then) = _$ReadSupportAttributeDtoCopyWithImpl;
@useResult
$Res call({
 String subject, String message
});




}
/// @nodoc
class _$ReadSupportAttributeDtoCopyWithImpl<$Res>
    implements $ReadSupportAttributeDtoCopyWith<$Res> {
  _$ReadSupportAttributeDtoCopyWithImpl(this._self, this._then);

  final ReadSupportAttributeDto _self;
  final $Res Function(ReadSupportAttributeDto) _then;

/// Create a copy of ReadSupportAttributeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subject = null,Object? message = null,}) {
  return _then(_self.copyWith(
subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReadSupportAttributeDto].
extension ReadSupportAttributeDtoPatterns on ReadSupportAttributeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReadSupportAttributeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReadSupportAttributeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReadSupportAttributeDto value)  $default,){
final _that = this;
switch (_that) {
case _ReadSupportAttributeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReadSupportAttributeDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReadSupportAttributeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String subject,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReadSupportAttributeDto() when $default != null:
return $default(_that.subject,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String subject,  String message)  $default,) {final _that = this;
switch (_that) {
case _ReadSupportAttributeDto():
return $default(_that.subject,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String subject,  String message)?  $default,) {final _that = this;
switch (_that) {
case _ReadSupportAttributeDto() when $default != null:
return $default(_that.subject,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReadSupportAttributeDto implements ReadSupportAttributeDto {
  const _ReadSupportAttributeDto({required this.subject, required this.message});
  factory _ReadSupportAttributeDto.fromJson(Map<String, dynamic> json) => _$ReadSupportAttributeDtoFromJson(json);

@override final  String subject;
@override final  String message;

/// Create a copy of ReadSupportAttributeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReadSupportAttributeDtoCopyWith<_ReadSupportAttributeDto> get copyWith => __$ReadSupportAttributeDtoCopyWithImpl<_ReadSupportAttributeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReadSupportAttributeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReadSupportAttributeDto&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,message);

@override
String toString() {
  return 'ReadSupportAttributeDto(subject: $subject, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReadSupportAttributeDtoCopyWith<$Res> implements $ReadSupportAttributeDtoCopyWith<$Res> {
  factory _$ReadSupportAttributeDtoCopyWith(_ReadSupportAttributeDto value, $Res Function(_ReadSupportAttributeDto) _then) = __$ReadSupportAttributeDtoCopyWithImpl;
@override @useResult
$Res call({
 String subject, String message
});




}
/// @nodoc
class __$ReadSupportAttributeDtoCopyWithImpl<$Res>
    implements _$ReadSupportAttributeDtoCopyWith<$Res> {
  __$ReadSupportAttributeDtoCopyWithImpl(this._self, this._then);

  final _ReadSupportAttributeDto _self;
  final $Res Function(_ReadSupportAttributeDto) _then;

/// Create a copy of ReadSupportAttributeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subject = null,Object? message = null,}) {
  return _then(_ReadSupportAttributeDto(
subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
