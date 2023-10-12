// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Order _$OrderFromJson(Map<String, dynamic> json) {
  return _Order.fromJson(json);
}

/// @nodoc
mixin _$Order {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get userId => throw _privateConstructorUsedError;
  @HiveField(2)
  List<OrderItem> get orderItems => throw _privateConstructorUsedError;
  @HiveField(3)
  int get count => throw _privateConstructorUsedError;
  @HiveField(4)
  String get totalPrice => throw _privateConstructorUsedError;
  @HiveField(5)
  String get orderDate => throw _privateConstructorUsedError;
  @HiveField(6)
  String get orderStatus => throw _privateConstructorUsedError;
  @HiveField(7)
  List<Coupon> get coupons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int? userId,
      @HiveField(2) List<OrderItem> orderItems,
      @HiveField(3) int count,
      @HiveField(4) String totalPrice,
      @HiveField(5) String orderDate,
      @HiveField(6) String orderStatus,
      @HiveField(7) List<Coupon> coupons});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? orderItems = null,
    Object? count = null,
    Object? totalPrice = null,
    Object? orderDate = null,
    Object? orderStatus = null,
    Object? coupons = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderItems: null == orderItems
          ? _value.orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
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
      coupons: null == coupons
          ? _value.coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int? userId,
      @HiveField(2) List<OrderItem> orderItems,
      @HiveField(3) int count,
      @HiveField(4) String totalPrice,
      @HiveField(5) String orderDate,
      @HiveField(6) String orderStatus,
      @HiveField(7) List<Coupon> coupons});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? orderItems = null,
    Object? count = null,
    Object? totalPrice = null,
    Object? orderDate = null,
    Object? orderStatus = null,
    Object? coupons = null,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      orderItems: null == orderItems
          ? _value._orderItems
          : orderItems // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
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
      coupons: null == coupons
          ? _value._coupons
          : coupons // ignore: cast_nullable_to_non_nullable
              as List<Coupon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: orderHiveTypeId, adapterName: orderAdapterName)
class _$OrderImpl extends _Order {
  _$OrderImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) this.userId,
      @HiveField(2) required final List<OrderItem> orderItems,
      @HiveField(3) required this.count,
      @HiveField(4) required this.totalPrice,
      @HiveField(5) required this.orderDate,
      @HiveField(6) required this.orderStatus,
      @HiveField(7) required final List<Coupon> coupons})
      : _orderItems = orderItems,
        _coupons = coupons,
        super._();

  factory _$OrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final int? userId;
  final List<OrderItem> _orderItems;
  @override
  @HiveField(2)
  List<OrderItem> get orderItems {
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItems);
  }

  @override
  @HiveField(3)
  final int count;
  @override
  @HiveField(4)
  final String totalPrice;
  @override
  @HiveField(5)
  final String orderDate;
  @override
  @HiveField(6)
  final String orderStatus;
  final List<Coupon> _coupons;
  @override
  @HiveField(7)
  List<Coupon> get coupons {
    if (_coupons is EqualUnmodifiableListView) return _coupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coupons);
  }

  @override
  String toString() {
    return 'Order(id: $id, userId: $userId, orderItems: $orderItems, count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderStatus: $orderStatus, coupons: $coupons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._orderItems, _orderItems) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            const DeepCollectionEquality().equals(other._coupons, _coupons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      const DeepCollectionEquality().hash(_orderItems),
      count,
      totalPrice,
      orderDate,
      orderStatus,
      const DeepCollectionEquality().hash(_coupons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderImplToJson(
      this,
    );
  }
}

abstract class _Order extends Order {
  factory _Order(
      {@HiveField(0) required final int id,
      @HiveField(1) final int? userId,
      @HiveField(2) required final List<OrderItem> orderItems,
      @HiveField(3) required final int count,
      @HiveField(4) required final String totalPrice,
      @HiveField(5) required final String orderDate,
      @HiveField(6) required final String orderStatus,
      @HiveField(7) required final List<Coupon> coupons}) = _$OrderImpl;
  _Order._() : super._();

  factory _Order.fromJson(Map<String, dynamic> json) = _$OrderImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  int? get userId;
  @override
  @HiveField(2)
  List<OrderItem> get orderItems;
  @override
  @HiveField(3)
  int get count;
  @override
  @HiveField(4)
  String get totalPrice;
  @override
  @HiveField(5)
  String get orderDate;
  @override
  @HiveField(6)
  String get orderStatus;
  @override
  @HiveField(7)
  List<Coupon> get coupons;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
