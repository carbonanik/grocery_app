// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderReadDto _$OrderReadDtoFromJson(Map<String, dynamic> json) {
  return _OrderReadDto.fromJson(json);
}

/// @nodoc
mixin _$OrderReadDto {
  int get id => throw _privateConstructorUsedError;
  OrderSubReadDto get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderReadDtoCopyWith<OrderReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReadDtoCopyWith<$Res> {
  factory $OrderReadDtoCopyWith(
          OrderReadDto value, $Res Function(OrderReadDto) then) =
      _$OrderReadDtoCopyWithImpl<$Res, OrderReadDto>;
  @useResult
  $Res call({int id, OrderSubReadDto attributes});

  $OrderSubReadDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class _$OrderReadDtoCopyWithImpl<$Res, $Val extends OrderReadDto>
    implements $OrderReadDtoCopyWith<$Res> {
  _$OrderReadDtoCopyWithImpl(this._value, this._then);

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
              as OrderSubReadDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderSubReadDtoCopyWith<$Res> get attributes {
    return $OrderSubReadDtoCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderReadDtoCopyWith<$Res>
    implements $OrderReadDtoCopyWith<$Res> {
  factory _$$_OrderReadDtoCopyWith(
          _$_OrderReadDto value, $Res Function(_$_OrderReadDto) then) =
      __$$_OrderReadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, OrderSubReadDto attributes});

  @override
  $OrderSubReadDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_OrderReadDtoCopyWithImpl<$Res>
    extends _$OrderReadDtoCopyWithImpl<$Res, _$_OrderReadDto>
    implements _$$_OrderReadDtoCopyWith<$Res> {
  __$$_OrderReadDtoCopyWithImpl(
      _$_OrderReadDto _value, $Res Function(_$_OrderReadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_OrderReadDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as OrderSubReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderReadDto with DiagnosticableTreeMixin implements _OrderReadDto {
  const _$_OrderReadDto({required this.id, required this.attributes});

  factory _$_OrderReadDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderReadDtoFromJson(json);

  @override
  final int id;
  @override
  final OrderSubReadDto attributes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderReadDto(id: $id, attributes: $attributes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderReadDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('attributes', attributes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderReadDto &&
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
  _$$_OrderReadDtoCopyWith<_$_OrderReadDto> get copyWith =>
      __$$_OrderReadDtoCopyWithImpl<_$_OrderReadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderReadDtoToJson(
      this,
    );
  }
}

abstract class _OrderReadDto implements OrderReadDto {
  const factory _OrderReadDto(
      {required final int id,
      required final OrderSubReadDto attributes}) = _$_OrderReadDto;

  factory _OrderReadDto.fromJson(Map<String, dynamic> json) =
      _$_OrderReadDto.fromJson;

  @override
  int get id;
  @override
  OrderSubReadDto get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_OrderReadDtoCopyWith<_$_OrderReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderSubReadDto _$OrderSubReadDtoFromJson(Map<String, dynamic> json) {
  return _OrderSubReadDto.fromJson(json);
}

/// @nodoc
mixin _$OrderSubReadDto {
  int get count => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  String get orderStatus => throw _privateConstructorUsedError;
  List<OrderItemReadDto> get orderItems => throw _privateConstructorUsedError;
  List<Coupon> get coupons => throw _privateConstructorUsedError;
  UserInOrderReadDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderSubReadDtoCopyWith<OrderSubReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSubReadDtoCopyWith<$Res> {
  factory $OrderSubReadDtoCopyWith(
          OrderSubReadDto value, $Res Function(OrderSubReadDto) then) =
      _$OrderSubReadDtoCopyWithImpl<$Res, OrderSubReadDto>;
  @useResult
  $Res call(
      {int count,
      String totalPrice,
      String orderDate,
      String orderStatus,
      List<OrderItemReadDto> orderItems,
      List<Coupon> coupons,
      UserInOrderReadDto user});

  $UserInOrderReadDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$OrderSubReadDtoCopyWithImpl<$Res, $Val extends OrderSubReadDto>
    implements $OrderSubReadDtoCopyWith<$Res> {
  _$OrderSubReadDtoCopyWithImpl(this._value, this._then);

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
    Object? orderStatus = null,
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
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItemReadDto>,
      coupons: null == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInOrderReadDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInOrderReadDtoCopyWith<$Res> get user {
    return $UserInOrderReadDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderSubReadDtoCopyWith<$Res>
    implements $OrderSubReadDtoCopyWith<$Res> {
  factory _$$_OrderSubReadDtoCopyWith(
          _$_OrderSubReadDto value, $Res Function(_$_OrderSubReadDto) then) =
      __$$_OrderSubReadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String totalPrice,
      String orderDate,
      String orderStatus,
      List<OrderItemReadDto> orderItems,
      List<Coupon> coupons,
      UserInOrderReadDto user});

  @override
  $UserInOrderReadDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_OrderSubReadDtoCopyWithImpl<$Res>
    extends _$OrderSubReadDtoCopyWithImpl<$Res, _$_OrderSubReadDto>
    implements _$$_OrderSubReadDtoCopyWith<$Res> {
  __$$_OrderSubReadDtoCopyWithImpl(
      _$_OrderSubReadDto _value, $Res Function(_$_OrderSubReadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? totalPrice = null,
    Object? orderDate = null,
    Object? orderStatus = null,
    Object? orderItems = null,
    Object? coupons = null,
    Object? user = null,
  }) {
    return _then(_$_OrderSubReadDto(
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
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItemReadDto>,
      coupons: null == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInOrderReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderSubReadDto
    with DiagnosticableTreeMixin
    implements _OrderSubReadDto {
  const _$_OrderSubReadDto(
      {required this.count,
      required this.totalPrice,
      required this.orderDate,
      required this.orderStatus,
      required final List<OrderItemReadDto> orderItems,
      required final List<Coupon> coupons,
      required this.user})
      : _orderItems = orderItems,
        _coupons = coupons;

  factory _$_OrderSubReadDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderSubReadDtoFromJson(json);

  @override
  final int count;
  @override
  final String totalPrice;
  @override
  final String orderDate;
  @override
  final String orderStatus;
  final List<OrderItemReadDto> _orderItems;
  @override
  List<OrderItemReadDto> get orderItems {
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
  final UserInOrderReadDto user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderSubReadDto(count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderStatus: $orderStatus, orderItems: $orderItems, coupons: $coupons, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderSubReadDto'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('orderDate', orderDate))
      ..add(DiagnosticsProperty('orderStatus', orderStatus))
      ..add(DiagnosticsProperty('orderItems', orderItems))
      ..add(DiagnosticsProperty('coupons', coupons))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSubReadDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
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
      orderStatus,
      const DeepCollectionEquality().hash(_orderItems),
      const DeepCollectionEquality().hash(_coupons),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSubReadDtoCopyWith<_$_OrderSubReadDto> get copyWith =>
      __$$_OrderSubReadDtoCopyWithImpl<_$_OrderSubReadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderSubReadDtoToJson(
      this,
    );
  }
}

abstract class _OrderSubReadDto implements OrderSubReadDto {
  const factory _OrderSubReadDto(
      {required final int count,
      required final String totalPrice,
      required final String orderDate,
      required final String orderStatus,
      required final List<OrderItemReadDto> orderItems,
      required final List<Coupon> coupons,
      required final UserInOrderReadDto user}) = _$_OrderSubReadDto;

  factory _OrderSubReadDto.fromJson(Map<String, dynamic> json) =
      _$_OrderSubReadDto.fromJson;

  @override
  int get count;
  @override
  String get totalPrice;
  @override
  String get orderDate;
  @override
  String get orderStatus;
  @override
  List<OrderItemReadDto> get orderItems;
  @override
  List<Coupon> get coupons;
  @override
  UserInOrderReadDto get user;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSubReadDtoCopyWith<_$_OrderSubReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemReadDto _$OrderItemReadDtoFromJson(Map<String, dynamic> json) {
  return _OrderItemReadDto.fromJson(json);
}

/// @nodoc
mixin _$OrderItemReadDto {
  int get count => throw _privateConstructorUsedError;
  ProductDto get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemReadDtoCopyWith<OrderItemReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemReadDtoCopyWith<$Res> {
  factory $OrderItemReadDtoCopyWith(
          OrderItemReadDto value, $Res Function(OrderItemReadDto) then) =
      _$OrderItemReadDtoCopyWithImpl<$Res, OrderItemReadDto>;
  @useResult
  $Res call({int count, ProductDto product});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderItemReadDtoCopyWithImpl<$Res, $Val extends OrderItemReadDto>
    implements $OrderItemReadDtoCopyWith<$Res> {
  _$OrderItemReadDtoCopyWithImpl(this._value, this._then);

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
              as ProductDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderItemReadDtoCopyWith<$Res>
    implements $OrderItemReadDtoCopyWith<$Res> {
  factory _$$_OrderItemReadDtoCopyWith(
          _$_OrderItemReadDto value, $Res Function(_$_OrderItemReadDto) then) =
      __$$_OrderItemReadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, ProductDto product});

  @override
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$_OrderItemReadDtoCopyWithImpl<$Res>
    extends _$OrderItemReadDtoCopyWithImpl<$Res, _$_OrderItemReadDto>
    implements _$$_OrderItemReadDtoCopyWith<$Res> {
  __$$_OrderItemReadDtoCopyWithImpl(
      _$_OrderItemReadDto _value, $Res Function(_$_OrderItemReadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? product = null,
  }) {
    return _then(_$_OrderItemReadDto(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderItemReadDto
    with DiagnosticableTreeMixin
    implements _OrderItemReadDto {
  const _$_OrderItemReadDto({required this.count, required this.product});

  factory _$_OrderItemReadDto.fromJson(Map<String, dynamic> json) =>
      _$$_OrderItemReadDtoFromJson(json);

  @override
  final int count;
  @override
  final ProductDto product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrderItemReadDto(count: $count, product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrderItemReadDto'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderItemReadDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderItemReadDtoCopyWith<_$_OrderItemReadDto> get copyWith =>
      __$$_OrderItemReadDtoCopyWithImpl<_$_OrderItemReadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderItemReadDtoToJson(
      this,
    );
  }
}

abstract class _OrderItemReadDto implements OrderItemReadDto {
  const factory _OrderItemReadDto(
      {required final int count,
      required final ProductDto product}) = _$_OrderItemReadDto;

  factory _OrderItemReadDto.fromJson(Map<String, dynamic> json) =
      _$_OrderItemReadDto.fromJson;

  @override
  int get count;
  @override
  ProductDto get product;
  @override
  @JsonKey(ignore: true)
  _$$_OrderItemReadDtoCopyWith<_$_OrderItemReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInOrderReadDto _$UserInOrderReadDtoFromJson(Map<String, dynamic> json) {
  return _UserInOrderReadDto.fromJson(json);
}

/// @nodoc
mixin _$UserInOrderReadDto {
  UserReadDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInOrderReadDtoCopyWith<UserInOrderReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInOrderReadDtoCopyWith<$Res> {
  factory $UserInOrderReadDtoCopyWith(
          UserInOrderReadDto value, $Res Function(UserInOrderReadDto) then) =
      _$UserInOrderReadDtoCopyWithImpl<$Res, UserInOrderReadDto>;
  @useResult
  $Res call({UserReadDto data});

  $UserReadDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$UserInOrderReadDtoCopyWithImpl<$Res, $Val extends UserInOrderReadDto>
    implements $UserInOrderReadDtoCopyWith<$Res> {
  _$UserInOrderReadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserReadDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserReadDtoCopyWith<$Res> get data {
    return $UserReadDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserInOrderReadDtoCopyWith<$Res>
    implements $UserInOrderReadDtoCopyWith<$Res> {
  factory _$$_UserInOrderReadDtoCopyWith(_$_UserInOrderReadDto value,
          $Res Function(_$_UserInOrderReadDto) then) =
      __$$_UserInOrderReadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserReadDto data});

  @override
  $UserReadDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UserInOrderReadDtoCopyWithImpl<$Res>
    extends _$UserInOrderReadDtoCopyWithImpl<$Res, _$_UserInOrderReadDto>
    implements _$$_UserInOrderReadDtoCopyWith<$Res> {
  __$$_UserInOrderReadDtoCopyWithImpl(
      _$_UserInOrderReadDto _value, $Res Function(_$_UserInOrderReadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_UserInOrderReadDto(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInOrderReadDto
    with DiagnosticableTreeMixin
    implements _UserInOrderReadDto {
  const _$_UserInOrderReadDto({required this.data});

  factory _$_UserInOrderReadDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserInOrderReadDtoFromJson(json);

  @override
  final UserReadDto data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInOrderReadDto(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInOrderReadDto'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInOrderReadDto &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInOrderReadDtoCopyWith<_$_UserInOrderReadDto> get copyWith =>
      __$$_UserInOrderReadDtoCopyWithImpl<_$_UserInOrderReadDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInOrderReadDtoToJson(
      this,
    );
  }
}

abstract class _UserInOrderReadDto implements UserInOrderReadDto {
  const factory _UserInOrderReadDto({required final UserReadDto data}) =
      _$_UserInOrderReadDto;

  factory _UserInOrderReadDto.fromJson(Map<String, dynamic> json) =
      _$_UserInOrderReadDto.fromJson;

  @override
  UserReadDto get data;
  @override
  @JsonKey(ignore: true)
  _$$_UserInOrderReadDtoCopyWith<_$_UserInOrderReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserReadDto _$UserReadDtoFromJson(Map<String, dynamic> json) {
  return _UserReadDto.fromJson(json);
}

/// @nodoc
mixin _$UserReadDto {
  int get id => throw _privateConstructorUsedError;
  UserSubReadDto get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserReadDtoCopyWith<UserReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserReadDtoCopyWith<$Res> {
  factory $UserReadDtoCopyWith(
          UserReadDto value, $Res Function(UserReadDto) then) =
      _$UserReadDtoCopyWithImpl<$Res, UserReadDto>;
  @useResult
  $Res call({int id, UserSubReadDto attributes});

  $UserSubReadDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class _$UserReadDtoCopyWithImpl<$Res, $Val extends UserReadDto>
    implements $UserReadDtoCopyWith<$Res> {
  _$UserReadDtoCopyWithImpl(this._value, this._then);

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
              as UserSubReadDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserSubReadDtoCopyWith<$Res> get attributes {
    return $UserSubReadDtoCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserReadDtoCopyWith<$Res>
    implements $UserReadDtoCopyWith<$Res> {
  factory _$$_UserReadDtoCopyWith(
          _$_UserReadDto value, $Res Function(_$_UserReadDto) then) =
      __$$_UserReadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, UserSubReadDto attributes});

  @override
  $UserSubReadDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_UserReadDtoCopyWithImpl<$Res>
    extends _$UserReadDtoCopyWithImpl<$Res, _$_UserReadDto>
    implements _$$_UserReadDtoCopyWith<$Res> {
  __$$_UserReadDtoCopyWithImpl(
      _$_UserReadDto _value, $Res Function(_$_UserReadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_UserReadDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as UserSubReadDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserReadDto with DiagnosticableTreeMixin implements _UserReadDto {
  const _$_UserReadDto({required this.id, required this.attributes});

  factory _$_UserReadDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserReadDtoFromJson(json);

  @override
  final int id;
  @override
  final UserSubReadDto attributes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserReadDto(id: $id, attributes: $attributes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserReadDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('attributes', attributes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserReadDto &&
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
  _$$_UserReadDtoCopyWith<_$_UserReadDto> get copyWith =>
      __$$_UserReadDtoCopyWithImpl<_$_UserReadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserReadDtoToJson(
      this,
    );
  }
}

abstract class _UserReadDto implements UserReadDto {
  const factory _UserReadDto(
      {required final int id,
      required final UserSubReadDto attributes}) = _$_UserReadDto;

  factory _UserReadDto.fromJson(Map<String, dynamic> json) =
      _$_UserReadDto.fromJson;

  @override
  int get id;
  @override
  UserSubReadDto get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_UserReadDtoCopyWith<_$_UserReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserSubReadDto _$UserSubReadDtoFromJson(Map<String, dynamic> json) {
  return _UserSubReadDto.fromJson(json);
}

/// @nodoc
mixin _$UserSubReadDto {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  String get confirmed => throw _privateConstructorUsedError;
  String get blocked => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSubReadDtoCopyWith<UserSubReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSubReadDtoCopyWith<$Res> {
  factory $UserSubReadDtoCopyWith(
          UserSubReadDto value, $Res Function(UserSubReadDto) then) =
      _$UserSubReadDtoCopyWithImpl<$Res, UserSubReadDto>;
  @useResult
  $Res call(
      {String username,
      String email,
      String provider,
      String confirmed,
      String blocked,
      DateTime createdAt,
      DateTime updatedAt,
      String fullName,
      String phone,
      bool isActive});
}

/// @nodoc
class _$UserSubReadDtoCopyWithImpl<$Res, $Val extends UserSubReadDto>
    implements $UserSubReadDtoCopyWith<$Res> {
  _$UserSubReadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? confirmed = null,
    Object? blocked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? fullName = null,
    Object? phone = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as String,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserSubReadDtoCopyWith<$Res>
    implements $UserSubReadDtoCopyWith<$Res> {
  factory _$$_UserSubReadDtoCopyWith(
          _$_UserSubReadDto value, $Res Function(_$_UserSubReadDto) then) =
      __$$_UserSubReadDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String email,
      String provider,
      String confirmed,
      String blocked,
      DateTime createdAt,
      DateTime updatedAt,
      String fullName,
      String phone,
      bool isActive});
}

/// @nodoc
class __$$_UserSubReadDtoCopyWithImpl<$Res>
    extends _$UserSubReadDtoCopyWithImpl<$Res, _$_UserSubReadDto>
    implements _$$_UserSubReadDtoCopyWith<$Res> {
  __$$_UserSubReadDtoCopyWithImpl(
      _$_UserSubReadDto _value, $Res Function(_$_UserSubReadDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? provider = null,
    Object? confirmed = null,
    Object? blocked = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? fullName = null,
    Object? phone = null,
    Object? isActive = null,
  }) {
    return _then(_$_UserSubReadDto(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      confirmed: null == confirmed
          ? _value.confirmed
          : confirmed // ignore: cast_nullable_to_non_nullable
              as String,
      blocked: null == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserSubReadDto
    with DiagnosticableTreeMixin
    implements _UserSubReadDto {
  const _$_UserSubReadDto(
      {required this.username,
      required this.email,
      required this.provider,
      required this.confirmed,
      required this.blocked,
      required this.createdAt,
      required this.updatedAt,
      required this.fullName,
      required this.phone,
      required this.isActive});

  factory _$_UserSubReadDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserSubReadDtoFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String provider;
  @override
  final String confirmed;
  @override
  final String blocked;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String fullName;
  @override
  final String phone;
  @override
  final bool isActive;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserSubReadDto(username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt, fullName: $fullName, phone: $phone, isActive: $isActive)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserSubReadDto'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('provider', provider))
      ..add(DiagnosticsProperty('confirmed', confirmed))
      ..add(DiagnosticsProperty('blocked', blocked))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('isActive', isActive));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSubReadDto &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, provider,
      confirmed, blocked, createdAt, updatedAt, fullName, phone, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSubReadDtoCopyWith<_$_UserSubReadDto> get copyWith =>
      __$$_UserSubReadDtoCopyWithImpl<_$_UserSubReadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserSubReadDtoToJson(
      this,
    );
  }
}

abstract class _UserSubReadDto implements UserSubReadDto {
  const factory _UserSubReadDto(
      {required final String username,
      required final String email,
      required final String provider,
      required final String confirmed,
      required final String blocked,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String fullName,
      required final String phone,
      required final bool isActive}) = _$_UserSubReadDto;

  factory _UserSubReadDto.fromJson(Map<String, dynamic> json) =
      _$_UserSubReadDto.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get provider;
  @override
  String get confirmed;
  @override
  String get blocked;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get fullName;
  @override
  String get phone;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_UserSubReadDtoCopyWith<_$_UserSubReadDto> get copyWith =>
      throw _privateConstructorUsedError;
}
