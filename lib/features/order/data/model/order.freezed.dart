// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Order {

@HiveField(0) int get id;@HiveField(1) int? get userId;@HiveField(2) List<OrderItem> get orderItems;@HiveField(3) int get count;@HiveField(4) String get totalPrice;@HiveField(5) String get orderDate;@HiveField(6) String get orderStatus;@HiveField(7) List<Coupon> get coupons;
/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCopyWith<Order> get copyWith => _$OrderCopyWithImpl<Order>(this as Order, _$identity);

  /// Serializes this Order to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Order&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other.orderItems, orderItems)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other.coupons, coupons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,const DeepCollectionEquality().hash(orderItems),count,totalPrice,orderDate,orderStatus,const DeepCollectionEquality().hash(coupons));

@override
String toString() {
  return 'Order(id: $id, userId: $userId, orderItems: $orderItems, count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderStatus: $orderStatus, coupons: $coupons)';
}


}

/// @nodoc
abstract mixin class $OrderCopyWith<$Res>  {
  factory $OrderCopyWith(Order value, $Res Function(Order) _then) = _$OrderCopyWithImpl;
@useResult
$Res call({
@HiveField(0) int id,@HiveField(1) int? userId,@HiveField(2) List<OrderItem> orderItems,@HiveField(3) int count,@HiveField(4) String totalPrice,@HiveField(5) String orderDate,@HiveField(6) String orderStatus,@HiveField(7) List<Coupon> coupons
});




}
/// @nodoc
class _$OrderCopyWithImpl<$Res>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._self, this._then);

  final Order _self;
  final $Res Function(Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? orderItems = null,Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderStatus = null,Object? coupons = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,orderItems: null == orderItems ? _self.orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,coupons: null == coupons ? _self.coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,
  ));
}

}


/// Adds pattern-matching-related methods to [Order].
extension OrderPatterns on Order {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Order value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Order value)  $default,){
final _that = this;
switch (_that) {
case _Order():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Order value)?  $default,){
final _that = this;
switch (_that) {
case _Order() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  int id, @HiveField(1)  int? userId, @HiveField(2)  List<OrderItem> orderItems, @HiveField(3)  int count, @HiveField(4)  String totalPrice, @HiveField(5)  String orderDate, @HiveField(6)  String orderStatus, @HiveField(7)  List<Coupon> coupons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.userId,_that.orderItems,_that.count,_that.totalPrice,_that.orderDate,_that.orderStatus,_that.coupons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  int id, @HiveField(1)  int? userId, @HiveField(2)  List<OrderItem> orderItems, @HiveField(3)  int count, @HiveField(4)  String totalPrice, @HiveField(5)  String orderDate, @HiveField(6)  String orderStatus, @HiveField(7)  List<Coupon> coupons)  $default,) {final _that = this;
switch (_that) {
case _Order():
return $default(_that.id,_that.userId,_that.orderItems,_that.count,_that.totalPrice,_that.orderDate,_that.orderStatus,_that.coupons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  int id, @HiveField(1)  int? userId, @HiveField(2)  List<OrderItem> orderItems, @HiveField(3)  int count, @HiveField(4)  String totalPrice, @HiveField(5)  String orderDate, @HiveField(6)  String orderStatus, @HiveField(7)  List<Coupon> coupons)?  $default,) {final _that = this;
switch (_that) {
case _Order() when $default != null:
return $default(_that.id,_that.userId,_that.orderItems,_that.count,_that.totalPrice,_that.orderDate,_that.orderStatus,_that.coupons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: orderHiveTypeId, adapterName: orderAdapterName)
class _Order extends Order {
   _Order({@HiveField(0) required this.id, @HiveField(1) this.userId, @HiveField(2) required final  List<OrderItem> orderItems, @HiveField(3) required this.count, @HiveField(4) required this.totalPrice, @HiveField(5) required this.orderDate, @HiveField(6) required this.orderStatus, @HiveField(7) required final  List<Coupon> coupons}): _orderItems = orderItems,_coupons = coupons,super._();
  factory _Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

@override@HiveField(0) final  int id;
@override@HiveField(1) final  int? userId;
 final  List<OrderItem> _orderItems;
@override@HiveField(2) List<OrderItem> get orderItems {
  if (_orderItems is EqualUnmodifiableListView) return _orderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderItems);
}

@override@HiveField(3) final  int count;
@override@HiveField(4) final  String totalPrice;
@override@HiveField(5) final  String orderDate;
@override@HiveField(6) final  String orderStatus;
 final  List<Coupon> _coupons;
@override@HiveField(7) List<Coupon> get coupons {
  if (_coupons is EqualUnmodifiableListView) return _coupons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coupons);
}


/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCopyWith<_Order> get copyWith => __$OrderCopyWithImpl<_Order>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Order&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&const DeepCollectionEquality().equals(other._orderItems, _orderItems)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other._coupons, _coupons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,const DeepCollectionEquality().hash(_orderItems),count,totalPrice,orderDate,orderStatus,const DeepCollectionEquality().hash(_coupons));

@override
String toString() {
  return 'Order(id: $id, userId: $userId, orderItems: $orderItems, count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderStatus: $orderStatus, coupons: $coupons)';
}


}

/// @nodoc
abstract mixin class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) _then) = __$OrderCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) int id,@HiveField(1) int? userId,@HiveField(2) List<OrderItem> orderItems,@HiveField(3) int count,@HiveField(4) String totalPrice,@HiveField(5) String orderDate,@HiveField(6) String orderStatus,@HiveField(7) List<Coupon> coupons
});




}
/// @nodoc
class __$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(this._self, this._then);

  final _Order _self;
  final $Res Function(_Order) _then;

/// Create a copy of Order
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? orderItems = null,Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderStatus = null,Object? coupons = null,}) {
  return _then(_Order(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,orderItems: null == orderItems ? _self._orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,coupons: null == coupons ? _self._coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,
  ));
}


}

// dart format on
