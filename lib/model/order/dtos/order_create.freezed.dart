// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderCreateDto _$OrderCreateDtoFromJson(Map<String, dynamic> json) {
  return _OrderCreateDto.fromJson(json);
}

/// @nodoc
mixin _$OrderCreateDto {
  int get count => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  List<OrderItemCreateDto> get orderItems => throw _privateConstructorUsedError;
  List<Coupon> get coupons => throw _privateConstructorUsedError;
  UserInOrderCreateDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCreateDtoCopyWith<OrderCreateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreateDtoCopyWith<$Res> {
  factory $OrderCreateDtoCopyWith(
          OrderCreateDto value, $Res Function(OrderCreateDto) then) =
      _$OrderCreateDtoCopyWithImpl<$Res, OrderCreateDto>;
  @useResult
  $Res call(
      {int count,
      String totalPrice,
      String orderDate,
      List<OrderItemCreateDto> orderItems,
      List<Coupon> coupons,
      UserInOrderCreateDto user});

  $UserInOrderCreateDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$OrderCreateDtoCopyWithImpl<$Res, $Val extends OrderCreateDto>
    implements $OrderCreateDtoCopyWith<$Res> {
  _$OrderCreateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalPrice = null,
    Object? orderDate = null,
    Object? orderItems = null,
    Object? coupons = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItemCreateDto>,
      coupons: null == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInOrderCreateDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInOrderCreateDtoCopyWith<$Res> get user {
    return $UserInOrderCreateDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderCreateDtoCopyWith<$Res>
    implements $OrderCreateDtoCopyWith<$Res> {
  factory _$$_OrderCreateDtoCopyWith(
          _$_OrderCreateDto value, $Res Function(_$_OrderCreateDto) then) =
      __$$_OrderCreateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String totalPrice,
      String orderDate,
      List<OrderItemCreateDto> orderItems,
      List<Coupon> coupons,
      UserInOrderCreateDto user});

  @override
  $UserInOrderCreateDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_OrderCreateDtoCopyWithImpl<$Res>
    extends _$OrderCreateDtoCopyWithImpl<$Res, _$_OrderCreateDto>
    implements _$$_OrderCreateDtoCopyWith<$Res> {
  __$$_OrderCreateDtoCopyWithImpl(
      _$_OrderCreateDto _value, $Res Function(_$_OrderCreateDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalPrice = null,
    Object? orderDate = null,
    Object? orderItems = null,
    Object? coupons = null,
    Object? user = null,
  }) {
    return _then(_$_OrderCreateDto(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItemCreateDto>,
      coupons: null == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInOrderCreateDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderCreateDto
    with DiagnosticableTreeMixin
    implements _OrderCreateDto {
  const _$_OrderCreateDto(
      {required this.count,
      required this.totalPrice,
      required this.orderDate,
      required final List<OrderItemCreateDto> orderItems,
      required final List<Coupon> coupons,
      required this.user})
      : _orderItems = orderItems,
        _coupons = coupons;

  factory _$_OrderCreateDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderCreateDtoFromJson(json);

  @override
  final int count;
  @override
  final String totalPrice;
  @override
  final String orderDate;
  final List<OrderItemCreateDto> _orderItems;
  @override
  List<OrderItemCreateDto> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  final List<Coupon> _coupons;
  @override
  List<Coupon> get coupons {
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupons);
  }

  @override
  final UserInOrderCreateDto user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderCreateDto(count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderItems: $orderItems, coupons: $coupons, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderCreateDto'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('orderDate', orderDate))
      ..add(DiagnosticsProperty('orderItems', orderItems))
      ..add(DiagnosticsProperty('coupons', coupons))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderCreateDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      totalPrice,
      orderDate,
      const DeepCollectionEquality().hash(_orderItems),
      const DeepCollectionEquality().hash(_coupons),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderCreateDtoCopyWith<_$_OrderCreateDto> get copyWith =>
      __$$_OrderCreateDtoCopyWithImpl<_$_OrderCreateDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderCreateDtoToJson(
      this,
    );
  }
}

abstract class _OrderCreateDto implements OrderCreateDto {
  const factory _OrderCreateDto(
      {required final int count,
      required final String totalPrice,
      required final String orderDate,
      required final List<OrderItemCreateDto> orderItems,
      required final List<Coupon> coupons,
      required final UserInOrderCreateDto user}) = _$_OrderCreateDto;

  factory _OrderCreateDto.fromJson(Map<String, dynamic> json) =
      _$_OrderCreateDto.fromJson;

  @override
  int get count;
  @override
  String get totalPrice;
  @override
  String get orderDate;
  @override
  List<OrderItemCreateDto> get orderItems;
  @override
  List<Coupon> get coupons;
  @override
  UserInOrderCreateDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_OrderCreateDtoCopyWith<_$_OrderCreateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemCreateDto _$OrderItemCreateDtoFromJson(Map<String, dynamic> json) {
  return _OrderItemCreateDto.fromJson(json);
}

/// @nodoc
mixin _$OrderItemCreateDto {
  int get count => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemCreateDtoCopyWith<OrderItemCreateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCreateDtoCopyWith<$Res> {
  factory $OrderItemCreateDtoCopyWith(
          OrderItemCreateDto value, $Res Function(OrderItemCreateDto) then) =
      _$OrderItemCreateDtoCopyWithImpl<$Res, OrderItemCreateDto>;
  @useResult
  $Res call({int count, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderItemCreateDtoCopyWithImpl<$Res, $Val extends OrderItemCreateDto>
    implements $OrderItemCreateDtoCopyWith<$Res> {
  _$OrderItemCreateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderItemCreateDtoCopyWith<$Res>
    implements $OrderItemCreateDtoCopyWith<$Res> {
  factory _$$_OrderItemCreateDtoCopyWith(_$_OrderItemCreateDto value,
          $Res Function(_$_OrderItemCreateDto) then) =
      __$$_OrderItemCreateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_OrderItemCreateDtoCopyWithImpl<$Res>
    extends _$OrderItemCreateDtoCopyWithImpl<$Res, _$_OrderItemCreateDto>
    implements _$$_OrderItemCreateDtoCopyWith<$Res> {
  __$$_OrderItemCreateDtoCopyWithImpl(
      _$_OrderItemCreateDto _value, $Res Function(_$_OrderItemCreateDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_$_OrderItemCreateDto(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItemCreateDto
    with DiagnosticableTreeMixin
    implements _OrderItemCreateDto {
  const _$_OrderItemCreateDto({required this.count, required this.product});

  factory _$_OrderItemCreateDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemCreateDtoFromJson(json);

  @override
  final int count;
  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderItemCreateDto(count: $count, product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItemCreateDto'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItemCreateDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderItemCreateDtoCopyWith<_$_OrderItemCreateDto> get copyWith =>
      __$$_OrderItemCreateDtoCopyWithImpl<_$_OrderItemCreateDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemCreateDtoToJson(
      this,
    );
  }
}

abstract class _OrderItemCreateDto implements OrderItemCreateDto {
  const factory _OrderItemCreateDto(
      {required final int count,
      required final Product product}) = _$_OrderItemCreateDto;

  factory _OrderItemCreateDto.fromJson(Map<String, dynamic> json) =
      _$_OrderItemCreateDto.fromJson;

  @override
  int get count;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemCreateDtoCopyWith<_$_OrderItemCreateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInOrderCreateDto _$UserInOrderCreateDtoFromJson(Map<String, dynamic> json) {
  return _UserInOrderCreateDto.fromJson(json);
}

/// @nodoc
mixin _$UserInOrderCreateDto {
  List<int> get connect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInOrderCreateDtoCopyWith<UserInOrderCreateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInOrderCreateDtoCopyWith<$Res> {
  factory $UserInOrderCreateDtoCopyWith(UserInOrderCreateDto value,
          $Res Function(UserInOrderCreateDto) then) =
      _$UserInOrderCreateDtoCopyWithImpl<$Res, UserInOrderCreateDto>;
  @useResult
  $Res call({List<int> connect});
}

/// @nodoc
class _$UserInOrderCreateDtoCopyWithImpl<$Res,
        $Val extends UserInOrderCreateDto>
    implements $UserInOrderCreateDtoCopyWith<$Res> {
  _$UserInOrderCreateDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserInOrderCreateDtoCopyWith<$Res>
    implements $UserInOrderCreateDtoCopyWith<$Res> {
  factory _$$_UserInOrderCreateDtoCopyWith(_$_UserInOrderCreateDto value,
          $Res Function(_$_UserInOrderCreateDto) then) =
      __$$_UserInOrderCreateDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> connect});
}

/// @nodoc
class __$$_UserInOrderCreateDtoCopyWithImpl<$Res>
    extends _$UserInOrderCreateDtoCopyWithImpl<$Res, _$_UserInOrderCreateDto>
    implements _$$_UserInOrderCreateDtoCopyWith<$Res> {
  __$$_UserInOrderCreateDtoCopyWithImpl(_$_UserInOrderCreateDto _value,
      $Res Function(_$_UserInOrderCreateDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connect = null,
  }) {
    return _then(_$_UserInOrderCreateDto(
      connect: null == connect
          ? _value._connect
          : connect // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInOrderCreateDto
    with DiagnosticableTreeMixin
    implements _UserInOrderCreateDto {
  const _$_UserInOrderCreateDto({required final List<int> connect})
      : _connect = connect;

  factory _$_UserInOrderCreateDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserInOrderCreateDtoFromJson(json);

  final List<int> _connect;
  @override
  List<int> get connect {
    if (_connect is EqualUnmodifiableListView) return _connect;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connect);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInOrderCreateDto(connect: $connect)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInOrderCreateDto'))
      ..add(DiagnosticsProperty('connect', connect));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInOrderCreateDto &&
            const DeepCollectionEquality().equals(other._connect, _connect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_connect));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInOrderCreateDtoCopyWith<_$_UserInOrderCreateDto> get copyWith =>
      __$$_UserInOrderCreateDtoCopyWithImpl<_$_UserInOrderCreateDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInOrderCreateDtoToJson(
      this,
    );
  }
}

abstract class _UserInOrderCreateDto implements UserInOrderCreateDto {
  const factory _UserInOrderCreateDto({required final List<int> connect}) =
      _$_UserInOrderCreateDto;

  factory _UserInOrderCreateDto.fromJson(Map<String, dynamic> json) =
      _$_UserInOrderCreateDto.fromJson;

  @override
  List<int> get connect;
  @override
  @JsonKey(ignore: true)
  _$$_UserInOrderCreateDtoCopyWith<_$_UserInOrderCreateDto> get copyWith =>
      throw _privateConstructorUsedError;
}
