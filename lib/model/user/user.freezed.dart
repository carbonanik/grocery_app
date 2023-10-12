// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) {
  return _CreateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateUserRequest {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateUserRequestCopyWith<CreateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateUserRequestCopyWith<$Res> {
  factory $CreateUserRequestCopyWith(
          CreateUserRequest value, $Res Function(CreateUserRequest) then) =
      _$CreateUserRequestCopyWithImpl<$Res, CreateUserRequest>;
  @useResult
  $Res call(
      {String email,
      String username,
      String? fullName,
      String? phone,
      String password});
}

/// @nodoc
class _$CreateUserRequestCopyWithImpl<$Res, $Val extends CreateUserRequest>
    implements $CreateUserRequestCopyWith<$Res> {
  _$CreateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserRequestImplCopyWith<$Res>
    implements $CreateUserRequestCopyWith<$Res> {
  factory _$$CreateUserRequestImplCopyWith(_$CreateUserRequestImpl value,
          $Res Function(_$CreateUserRequestImpl) then) =
      __$$CreateUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String username,
      String? fullName,
      String? phone,
      String password});
}

/// @nodoc
class __$$CreateUserRequestImplCopyWithImpl<$Res>
    extends _$CreateUserRequestCopyWithImpl<$Res, _$CreateUserRequestImpl>
    implements _$$CreateUserRequestImplCopyWith<$Res> {
  __$$CreateUserRequestImplCopyWithImpl(_$CreateUserRequestImpl _value,
      $Res Function(_$CreateUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? password = null,
  }) {
    return _then(_$CreateUserRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateUserRequestImpl implements _CreateUserRequest {
  const _$CreateUserRequestImpl(
      {required this.email,
      required this.username,
      this.fullName,
      this.phone,
      required this.password});

  factory _$CreateUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateUserRequestImplFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String password;

  @override
  String toString() {
    return 'CreateUserRequest(email: $email, username: $username, fullName: $fullName, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, username, fullName, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      __$$CreateUserRequestImplCopyWithImpl<_$CreateUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateUserRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateUserRequest implements CreateUserRequest {
  const factory _CreateUserRequest(
      {required final String email,
      required final String username,
      final String? fullName,
      final String? phone,
      required final String password}) = _$CreateUserRequestImpl;

  factory _CreateUserRequest.fromJson(Map<String, dynamic> json) =
      _$CreateUserRequestImpl.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String? get fullName;
  @override
  String? get phone;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$CreateUserRequestImplCopyWith<_$CreateUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) {
  return _UpdateUserRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserRequest {
  String? get fullName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserRequestCopyWith<UpdateUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserRequestCopyWith<$Res> {
  factory $UpdateUserRequestCopyWith(
          UpdateUserRequest value, $Res Function(UpdateUserRequest) then) =
      _$UpdateUserRequestCopyWithImpl<$Res, UpdateUserRequest>;
  @useResult
  $Res call({String? fullName, String? phone, String? email});
}

/// @nodoc
class _$UpdateUserRequestCopyWithImpl<$Res, $Val extends UpdateUserRequest>
    implements $UpdateUserRequestCopyWith<$Res> {
  _$UpdateUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserRequestImplCopyWith<$Res>
    implements $UpdateUserRequestCopyWith<$Res> {
  factory _$$UpdateUserRequestImplCopyWith(_$UpdateUserRequestImpl value,
          $Res Function(_$UpdateUserRequestImpl) then) =
      __$$UpdateUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fullName, String? phone, String? email});
}

/// @nodoc
class __$$UpdateUserRequestImplCopyWithImpl<$Res>
    extends _$UpdateUserRequestCopyWithImpl<$Res, _$UpdateUserRequestImpl>
    implements _$$UpdateUserRequestImplCopyWith<$Res> {
  __$$UpdateUserRequestImplCopyWithImpl(_$UpdateUserRequestImpl _value,
      $Res Function(_$UpdateUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UpdateUserRequestImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserRequestImpl implements _UpdateUserRequest {
  const _$UpdateUserRequestImpl({this.fullName, this.phone, this.email});

  factory _$UpdateUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserRequestImplFromJson(json);

  @override
  final String? fullName;
  @override
  final String? phone;
  @override
  final String? email;

  @override
  String toString() {
    return 'UpdateUserRequest(fullName: $fullName, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserRequestImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, phone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserRequestImplCopyWith<_$UpdateUserRequestImpl> get copyWith =>
      __$$UpdateUserRequestImplCopyWithImpl<_$UpdateUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserRequest implements UpdateUserRequest {
  const factory _UpdateUserRequest(
      {final String? fullName,
      final String? phone,
      final String? email}) = _$UpdateUserRequestImpl;

  factory _UpdateUserRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateUserRequestImpl.fromJson;

  @override
  String? get fullName;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserRequestImplCopyWith<_$UpdateUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get username => throw _privateConstructorUsedError;
  @HiveField(2)
  String get email => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get provider => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get confirmed => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get blocked => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get fullName => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get phone => throw _privateConstructorUsedError;
  @HiveField(8)
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String username,
      @HiveField(2) String email,
      @HiveField(3) String? provider,
      @HiveField(4) bool? confirmed,
      @HiveField(5) bool? blocked,
      @HiveField(6) String? fullName,
      @HiveField(7) String? phone,
      @HiveField(8) bool? isActive});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? provider = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String username,
      @HiveField(2) String email,
      @HiveField(3) String? provider,
      @HiveField(4) bool? confirmed,
      @HiveField(5) bool? blocked,
      @HiveField(6) String? fullName,
      @HiveField(7) String? phone,
      @HiveField(8) bool? isActive});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? provider = freezed,
    Object? confirmed = freezed,
    Object? blocked = freezed,
    Object? fullName = freezed,
    Object? phone = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmed: freezed == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as bool?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: userHiveTypeId, adapterName: userAdapterName)
class _$UserImpl extends _User {
  _$UserImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.username,
      @HiveField(2) required this.email,
      @HiveField(3) this.provider,
      @HiveField(4) this.confirmed,
      @HiveField(5) this.blocked,
      @HiveField(6) this.fullName,
      @HiveField(7) this.phone,
      @HiveField(8) this.isActive})
      : super._();

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String username;
  @override
  @HiveField(2)
  final String email;
  @override
  @HiveField(3)
  final String? provider;
  @override
  @HiveField(4)
  final bool? confirmed;
  @override
  @HiveField(5)
  final bool? blocked;
  @override
  @HiveField(6)
  final String? fullName;
  @override
  @HiveField(7)
  final String? phone;
  @override
  @HiveField(8)
  final bool? isActive;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, fullName: $fullName, phone: $phone, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, provider,
      confirmed, blocked, fullName, phone, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String username,
      @HiveField(2) required final String email,
      @HiveField(3) final String? provider,
      @HiveField(4) final bool? confirmed,
      @HiveField(5) final bool? blocked,
      @HiveField(6) final String? fullName,
      @HiveField(7) final String? phone,
      @HiveField(8) final bool? isActive}) = _$UserImpl;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get username;
  @override
  @HiveField(2)
  String get email;
  @override
  @HiveField(3)
  String? get provider;
  @override
  @HiveField(4)
  bool? get confirmed;
  @override
  @HiveField(5)
  bool? get blocked;
  @override
  @HiveField(6)
  String? get fullName;
  @override
  @HiveField(7)
  String? get phone;
  @override
  @HiveField(8)
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
