// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateSupportDto _$CreateSupportDtoFromJson(Map<String, dynamic> json) {
  return _CreateSupportDto.fromJson(json);
}

/// @nodoc
mixin _$CreateSupportDto {
  String get subject => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserInSupportDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSupportDtoCopyWith<CreateSupportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSupportDtoCopyWith<$Res> {
  factory $CreateSupportDtoCopyWith(
          CreateSupportDto value, $Res Function(CreateSupportDto) then) =
      _$CreateSupportDtoCopyWithImpl<$Res, CreateSupportDto>;
  @useResult
  $Res call({String subject, String message, UserInSupportDto user});

  $UserInSupportDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$CreateSupportDtoCopyWithImpl<$Res, $Val extends CreateSupportDto>
    implements $CreateSupportDtoCopyWith<$Res> {
  _$CreateSupportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInSupportDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInSupportDtoCopyWith<$Res> get user {
    return $UserInSupportDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateSupportDtoImplCopyWith<$Res>
    implements $CreateSupportDtoCopyWith<$Res> {
  factory _$$CreateSupportDtoImplCopyWith(_$CreateSupportDtoImpl value,
          $Res Function(_$CreateSupportDtoImpl) then) =
      __$$CreateSupportDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, String message, UserInSupportDto user});

  @override
  $UserInSupportDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$CreateSupportDtoImplCopyWithImpl<$Res>
    extends _$CreateSupportDtoCopyWithImpl<$Res, _$CreateSupportDtoImpl>
    implements _$$CreateSupportDtoImplCopyWith<$Res> {
  __$$CreateSupportDtoImplCopyWithImpl(_$CreateSupportDtoImpl _value,
      $Res Function(_$CreateSupportDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$CreateSupportDtoImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInSupportDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSupportDtoImpl implements _CreateSupportDto {
  const _$CreateSupportDtoImpl(
      {required this.subject, required this.message, required this.user});

  factory _$CreateSupportDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSupportDtoImplFromJson(json);

  @override
  final String subject;
  @override
  final String message;
  @override
  final UserInSupportDto user;

  @override
  String toString() {
    return 'CreateSupportDto(subject: $subject, message: $message, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSupportDtoImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, message, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSupportDtoImplCopyWith<_$CreateSupportDtoImpl> get copyWith =>
      __$$CreateSupportDtoImplCopyWithImpl<_$CreateSupportDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSupportDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateSupportDto implements CreateSupportDto {
  const factory _CreateSupportDto(
      {required final String subject,
      required final String message,
      required final UserInSupportDto user}) = _$CreateSupportDtoImpl;

  factory _CreateSupportDto.fromJson(Map<String, dynamic> json) =
      _$CreateSupportDtoImpl.fromJson;

  @override
  String get subject;
  @override
  String get message;
  @override
  UserInSupportDto get user;
  @override
  @JsonKey(ignore: true)
  _$$CreateSupportDtoImplCopyWith<_$CreateSupportDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInSupportDto _$UserInSupportDtoFromJson(Map<String, dynamic> json) {
  return _UserInSupportDto.fromJson(json);
}

/// @nodoc
mixin _$UserInSupportDto {
  List<int> get connect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInSupportDtoCopyWith<UserInSupportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInSupportDtoCopyWith<$Res> {
  factory $UserInSupportDtoCopyWith(
          UserInSupportDto value, $Res Function(UserInSupportDto) then) =
      _$UserInSupportDtoCopyWithImpl<$Res, UserInSupportDto>;
  @useResult
  $Res call({List<int> connect});
}

/// @nodoc
class _$UserInSupportDtoCopyWithImpl<$Res, $Val extends UserInSupportDto>
    implements $UserInSupportDtoCopyWith<$Res> {
  _$UserInSupportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connect = null,
  }) {
    return _then(_value.copyWith(
      connect: null == connect
          ? _value.connect
          : connect // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInSupportDtoImplCopyWith<$Res>
    implements $UserInSupportDtoCopyWith<$Res> {
  factory _$$UserInSupportDtoImplCopyWith(_$UserInSupportDtoImpl value,
          $Res Function(_$UserInSupportDtoImpl) then) =
      __$$UserInSupportDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> connect});
}

/// @nodoc
class __$$UserInSupportDtoImplCopyWithImpl<$Res>
    extends _$UserInSupportDtoCopyWithImpl<$Res, _$UserInSupportDtoImpl>
    implements _$$UserInSupportDtoImplCopyWith<$Res> {
  __$$UserInSupportDtoImplCopyWithImpl(_$UserInSupportDtoImpl _value,
      $Res Function(_$UserInSupportDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connect = null,
  }) {
    return _then(_$UserInSupportDtoImpl(
      connect: null == connect
          ? _value._connect
          : connect // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInSupportDtoImpl implements _UserInSupportDto {
  const _$UserInSupportDtoImpl({required final List<int> connect})
      : _connect = connect;

  factory _$UserInSupportDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInSupportDtoImplFromJson(json);

  final List<int> _connect;
  @override
  List<int> get connect {
    if (_connect is EqualUnmodifiableListView) return _connect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connect);
  }

  @override
  String toString() {
    return 'UserInSupportDto(connect: $connect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInSupportDtoImpl &&
            const DeepCollectionEquality().equals(other._connect, _connect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_connect));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInSupportDtoImplCopyWith<_$UserInSupportDtoImpl> get copyWith =>
      __$$UserInSupportDtoImplCopyWithImpl<_$UserInSupportDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInSupportDtoImplToJson(
      this,
    );
  }
}

abstract class _UserInSupportDto implements UserInSupportDto {
  const factory _UserInSupportDto({required final List<int> connect}) =
      _$UserInSupportDtoImpl;

  factory _UserInSupportDto.fromJson(Map<String, dynamic> json) =
      _$UserInSupportDtoImpl.fromJson;

  @override
  List<int> get connect;
  @override
  @JsonKey(ignore: true)
  _$$UserInSupportDtoImplCopyWith<_$UserInSupportDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadSupportDto _$ReadSupportDtoFromJson(Map<String, dynamic> json) {
  return _ReadSupportDto.fromJson(json);
}

/// @nodoc
mixin _$ReadSupportDto {
  int get id => throw _privateConstructorUsedError;
  ReadSupportAttributeDto get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadSupportDtoCopyWith<ReadSupportDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadSupportDtoCopyWith<$Res> {
  factory $ReadSupportDtoCopyWith(
          ReadSupportDto value, $Res Function(ReadSupportDto) then) =
      _$ReadSupportDtoCopyWithImpl<$Res, ReadSupportDto>;
  @useResult
  $Res call({int id, ReadSupportAttributeDto attributes});

  $ReadSupportAttributeDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class _$ReadSupportDtoCopyWithImpl<$Res, $Val extends ReadSupportDto>
    implements $ReadSupportDtoCopyWith<$Res> {
  _$ReadSupportDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ReadSupportAttributeDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReadSupportAttributeDtoCopyWith<$Res> get attributes {
    return $ReadSupportAttributeDtoCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReadSupportDtoImplCopyWith<$Res>
    implements $ReadSupportDtoCopyWith<$Res> {
  factory _$$ReadSupportDtoImplCopyWith(_$ReadSupportDtoImpl value,
          $Res Function(_$ReadSupportDtoImpl) then) =
      __$$ReadSupportDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, ReadSupportAttributeDto attributes});

  @override
  $ReadSupportAttributeDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$ReadSupportDtoImplCopyWithImpl<$Res>
    extends _$ReadSupportDtoCopyWithImpl<$Res, _$ReadSupportDtoImpl>
    implements _$$ReadSupportDtoImplCopyWith<$Res> {
  __$$ReadSupportDtoImplCopyWithImpl(
      _$ReadSupportDtoImpl _value, $Res Function(_$ReadSupportDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$ReadSupportDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as ReadSupportAttributeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadSupportDtoImpl implements _ReadSupportDto {
  const _$ReadSupportDtoImpl({required this.id, required this.attributes});

  factory _$ReadSupportDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadSupportDtoImplFromJson(json);

  @override
  final int id;
  @override
  final ReadSupportAttributeDto attributes;

  @override
  String toString() {
    return 'ReadSupportDto(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadSupportDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, attributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadSupportDtoImplCopyWith<_$ReadSupportDtoImpl> get copyWith =>
      __$$ReadSupportDtoImplCopyWithImpl<_$ReadSupportDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadSupportDtoImplToJson(
      this,
    );
  }
}

abstract class _ReadSupportDto implements ReadSupportDto {
  const factory _ReadSupportDto(
          {required final int id,
          required final ReadSupportAttributeDto attributes}) =
      _$ReadSupportDtoImpl;

  factory _ReadSupportDto.fromJson(Map<String, dynamic> json) =
      _$ReadSupportDtoImpl.fromJson;

  @override
  int get id;
  @override
  ReadSupportAttributeDto get attributes;
  @override
  @JsonKey(ignore: true)
  _$$ReadSupportDtoImplCopyWith<_$ReadSupportDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadSupportAttributeDto _$ReadSupportAttributeDtoFromJson(
    Map<String, dynamic> json) {
  return _ReadSupportAttributeDto.fromJson(json);
}

/// @nodoc
mixin _$ReadSupportAttributeDto {
  String get subject => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadSupportAttributeDtoCopyWith<ReadSupportAttributeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadSupportAttributeDtoCopyWith<$Res> {
  factory $ReadSupportAttributeDtoCopyWith(ReadSupportAttributeDto value,
          $Res Function(ReadSupportAttributeDto) then) =
      _$ReadSupportAttributeDtoCopyWithImpl<$Res, ReadSupportAttributeDto>;
  @useResult
  $Res call({String subject, String message});
}

/// @nodoc
class _$ReadSupportAttributeDtoCopyWithImpl<$Res,
        $Val extends ReadSupportAttributeDto>
    implements $ReadSupportAttributeDtoCopyWith<$Res> {
  _$ReadSupportAttributeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReadSupportAttributeDtoImplCopyWith<$Res>
    implements $ReadSupportAttributeDtoCopyWith<$Res> {
  factory _$$ReadSupportAttributeDtoImplCopyWith(
          _$ReadSupportAttributeDtoImpl value,
          $Res Function(_$ReadSupportAttributeDtoImpl) then) =
      __$$ReadSupportAttributeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, String message});
}

/// @nodoc
class __$$ReadSupportAttributeDtoImplCopyWithImpl<$Res>
    extends _$ReadSupportAttributeDtoCopyWithImpl<$Res,
        _$ReadSupportAttributeDtoImpl>
    implements _$$ReadSupportAttributeDtoImplCopyWith<$Res> {
  __$$ReadSupportAttributeDtoImplCopyWithImpl(
      _$ReadSupportAttributeDtoImpl _value,
      $Res Function(_$ReadSupportAttributeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? message = null,
  }) {
    return _then(_$ReadSupportAttributeDtoImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReadSupportAttributeDtoImpl implements _ReadSupportAttributeDto {
  const _$ReadSupportAttributeDtoImpl(
      {required this.subject, required this.message});

  factory _$ReadSupportAttributeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReadSupportAttributeDtoImplFromJson(json);

  @override
  final String subject;
  @override
  final String message;

  @override
  String toString() {
    return 'ReadSupportAttributeDto(subject: $subject, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadSupportAttributeDtoImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadSupportAttributeDtoImplCopyWith<_$ReadSupportAttributeDtoImpl>
      get copyWith => __$$ReadSupportAttributeDtoImplCopyWithImpl<
          _$ReadSupportAttributeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReadSupportAttributeDtoImplToJson(
      this,
    );
  }
}

abstract class _ReadSupportAttributeDto implements ReadSupportAttributeDto {
  const factory _ReadSupportAttributeDto(
      {required final String subject,
      required final String message}) = _$ReadSupportAttributeDtoImpl;

  factory _ReadSupportAttributeDto.fromJson(Map<String, dynamic> json) =
      _$ReadSupportAttributeDtoImpl.fromJson;

  @override
  String get subject;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ReadSupportAttributeDtoImplCopyWith<_$ReadSupportAttributeDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
