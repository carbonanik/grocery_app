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
abstract class _$$_CreateSupportDtoCopyWith<$Res>
    implements $CreateSupportDtoCopyWith<$Res> {
  factory _$$_CreateSupportDtoCopyWith(
          _$_CreateSupportDto value, $Res Function(_$_CreateSupportDto) then) =
      __$$_CreateSupportDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, String message, UserInSupportDto user});

  @override
  $UserInSupportDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_CreateSupportDtoCopyWithImpl<$Res>
    extends _$CreateSupportDtoCopyWithImpl<$Res, _$_CreateSupportDto>
    implements _$$_CreateSupportDtoCopyWith<$Res> {
  __$$_CreateSupportDtoCopyWithImpl(
      _$_CreateSupportDto _value, $Res Function(_$_CreateSupportDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$_CreateSupportDto(
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
class _$_CreateSupportDto implements _CreateSupportDto {
  const _$_CreateSupportDto(
      {required this.subject, required this.message, required this.user});

  factory _$_CreateSupportDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateSupportDtoFromJson(json);

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
            other is _$_CreateSupportDto &&
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
  _$$_CreateSupportDtoCopyWith<_$_CreateSupportDto> get copyWith =>
      __$$_CreateSupportDtoCopyWithImpl<_$_CreateSupportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateSupportDtoToJson(
      this,
    );
  }
}

abstract class _CreateSupportDto implements CreateSupportDto {
  const factory _CreateSupportDto(
      {required final String subject,
      required final String message,
      required final UserInSupportDto user}) = _$_CreateSupportDto;

  factory _CreateSupportDto.fromJson(Map<String, dynamic> json) =
      _$_CreateSupportDto.fromJson;

  @override
  String get subject;
  @override
  String get message;
  @override
  UserInSupportDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_CreateSupportDtoCopyWith<_$_CreateSupportDto> get copyWith =>
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
abstract class _$$_UserInSupportDtoCopyWith<$Res>
    implements $UserInSupportDtoCopyWith<$Res> {
  factory _$$_UserInSupportDtoCopyWith(
          _$_UserInSupportDto value, $Res Function(_$_UserInSupportDto) then) =
      __$$_UserInSupportDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> connect});
}

/// @nodoc
class __$$_UserInSupportDtoCopyWithImpl<$Res>
    extends _$UserInSupportDtoCopyWithImpl<$Res, _$_UserInSupportDto>
    implements _$$_UserInSupportDtoCopyWith<$Res> {
  __$$_UserInSupportDtoCopyWithImpl(
      _$_UserInSupportDto _value, $Res Function(_$_UserInSupportDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connect = null,
  }) {
    return _then(_$_UserInSupportDto(
      connect: null == connect
          ? _value._connect
          : connect // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInSupportDto implements _UserInSupportDto {
  const _$_UserInSupportDto({required final List<int> connect})
      : _connect = connect;

  factory _$_UserInSupportDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserInSupportDtoFromJson(json);

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
            other is _$_UserInSupportDto &&
            const DeepCollectionEquality().equals(other._connect, _connect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_connect));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInSupportDtoCopyWith<_$_UserInSupportDto> get copyWith =>
      __$$_UserInSupportDtoCopyWithImpl<_$_UserInSupportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInSupportDtoToJson(
      this,
    );
  }
}

abstract class _UserInSupportDto implements UserInSupportDto {
  const factory _UserInSupportDto({required final List<int> connect}) =
      _$_UserInSupportDto;

  factory _UserInSupportDto.fromJson(Map<String, dynamic> json) =
      _$_UserInSupportDto.fromJson;

  @override
  List<int> get connect;
  @override
  @JsonKey(ignore: true)
  _$$_UserInSupportDtoCopyWith<_$_UserInSupportDto> get copyWith =>
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
abstract class _$$_ReadSupportDtoCopyWith<$Res>
    implements $ReadSupportDtoCopyWith<$Res> {
  factory _$$_ReadSupportDtoCopyWith(
          _$_ReadSupportDto value, $Res Function(_$_ReadSupportDto) then) =
      __$$_ReadSupportDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, ReadSupportAttributeDto attributes});

  @override
  $ReadSupportAttributeDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_ReadSupportDtoCopyWithImpl<$Res>
    extends _$ReadSupportDtoCopyWithImpl<$Res, _$_ReadSupportDto>
    implements _$$_ReadSupportDtoCopyWith<$Res> {
  __$$_ReadSupportDtoCopyWithImpl(
      _$_ReadSupportDto _value, $Res Function(_$_ReadSupportDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_ReadSupportDto(
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
class _$_ReadSupportDto implements _ReadSupportDto {
  const _$_ReadSupportDto({required this.id, required this.attributes});

  factory _$_ReadSupportDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReadSupportDtoFromJson(json);

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
            other is _$_ReadSupportDto &&
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
  _$$_ReadSupportDtoCopyWith<_$_ReadSupportDto> get copyWith =>
      __$$_ReadSupportDtoCopyWithImpl<_$_ReadSupportDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadSupportDtoToJson(
      this,
    );
  }
}

abstract class _ReadSupportDto implements ReadSupportDto {
  const factory _ReadSupportDto(
      {required final int id,
      required final ReadSupportAttributeDto attributes}) = _$_ReadSupportDto;

  factory _ReadSupportDto.fromJson(Map<String, dynamic> json) =
      _$_ReadSupportDto.fromJson;

  @override
  int get id;
  @override
  ReadSupportAttributeDto get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_ReadSupportDtoCopyWith<_$_ReadSupportDto> get copyWith =>
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
abstract class _$$_ReadSupportAttributeDtoCopyWith<$Res>
    implements $ReadSupportAttributeDtoCopyWith<$Res> {
  factory _$$_ReadSupportAttributeDtoCopyWith(_$_ReadSupportAttributeDto value,
          $Res Function(_$_ReadSupportAttributeDto) then) =
      __$$_ReadSupportAttributeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, String message});
}

/// @nodoc
class __$$_ReadSupportAttributeDtoCopyWithImpl<$Res>
    extends _$ReadSupportAttributeDtoCopyWithImpl<$Res,
        _$_ReadSupportAttributeDto>
    implements _$$_ReadSupportAttributeDtoCopyWith<$Res> {
  __$$_ReadSupportAttributeDtoCopyWithImpl(_$_ReadSupportAttributeDto _value,
      $Res Function(_$_ReadSupportAttributeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? message = null,
  }) {
    return _then(_$_ReadSupportAttributeDto(
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
class _$_ReadSupportAttributeDto implements _ReadSupportAttributeDto {
  const _$_ReadSupportAttributeDto(
      {required this.subject, required this.message});

  factory _$_ReadSupportAttributeDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReadSupportAttributeDtoFromJson(json);

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
            other is _$_ReadSupportAttributeDto &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadSupportAttributeDtoCopyWith<_$_ReadSupportAttributeDto>
      get copyWith =>
          __$$_ReadSupportAttributeDtoCopyWithImpl<_$_ReadSupportAttributeDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadSupportAttributeDtoToJson(
      this,
    );
  }
}

abstract class _ReadSupportAttributeDto implements ReadSupportAttributeDto {
  const factory _ReadSupportAttributeDto(
      {required final String subject,
      required final String message}) = _$_ReadSupportAttributeDto;

  factory _ReadSupportAttributeDto.fromJson(Map<String, dynamic> json) =
      _$_ReadSupportAttributeDto.fromJson;

  @override
  String get subject;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ReadSupportAttributeDtoCopyWith<_$_ReadSupportAttributeDto>
      get copyWith => throw _privateConstructorUsedError;
}
