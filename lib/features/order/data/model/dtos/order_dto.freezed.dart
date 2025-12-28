// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderReadDto implements DiagnosticableTreeMixin {

 int get id; OrderSubReadDto get attributes;
/// Create a copy of OrderReadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderReadDtoCopyWith<OrderReadDto> get copyWith => _$OrderReadDtoCopyWithImpl<OrderReadDto>(this as OrderReadDto, _$identity);

  /// Serializes this OrderReadDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderReadDto'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('attributes', attributes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderReadDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderReadDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $OrderReadDtoCopyWith<$Res>  {
  factory $OrderReadDtoCopyWith(OrderReadDto value, $Res Function(OrderReadDto) _then) = _$OrderReadDtoCopyWithImpl;
@useResult
$Res call({
 int id, OrderSubReadDto attributes
});


$OrderSubReadDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class _$OrderReadDtoCopyWithImpl<$Res>
    implements $OrderReadDtoCopyWith<$Res> {
  _$OrderReadDtoCopyWithImpl(this._self, this._then);

  final OrderReadDto _self;
  final $Res Function(OrderReadDto) _then;

/// Create a copy of OrderReadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as OrderSubReadDto,
  ));
}
/// Create a copy of OrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderSubReadDtoCopyWith<$Res> get attributes {
  
  return $OrderSubReadDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderReadDto].
extension OrderReadDtoPatterns on OrderReadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderReadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderReadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderReadDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderReadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderReadDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderReadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  OrderSubReadDto attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderReadDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  OrderSubReadDto attributes)  $default,) {final _that = this;
switch (_that) {
case _OrderReadDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  OrderSubReadDto attributes)?  $default,) {final _that = this;
switch (_that) {
case _OrderReadDto() when $default != null:
return $default(_that.id,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderReadDto with DiagnosticableTreeMixin implements OrderReadDto {
  const _OrderReadDto({required this.id, required this.attributes});
  factory _OrderReadDto.fromJson(Map<String, dynamic> json) => _$OrderReadDtoFromJson(json);

@override final  int id;
@override final  OrderSubReadDto attributes;

/// Create a copy of OrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderReadDtoCopyWith<_OrderReadDto> get copyWith => __$OrderReadDtoCopyWithImpl<_OrderReadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderReadDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderReadDto'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('attributes', attributes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderReadDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderReadDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$OrderReadDtoCopyWith<$Res> implements $OrderReadDtoCopyWith<$Res> {
  factory _$OrderReadDtoCopyWith(_OrderReadDto value, $Res Function(_OrderReadDto) _then) = __$OrderReadDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, OrderSubReadDto attributes
});


@override $OrderSubReadDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class __$OrderReadDtoCopyWithImpl<$Res>
    implements _$OrderReadDtoCopyWith<$Res> {
  __$OrderReadDtoCopyWithImpl(this._self, this._then);

  final _OrderReadDto _self;
  final $Res Function(_OrderReadDto) _then;

/// Create a copy of OrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_OrderReadDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as OrderSubReadDto,
  ));
}

/// Create a copy of OrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderSubReadDtoCopyWith<$Res> get attributes {
  
  return $OrderSubReadDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$OrderSubReadDto implements DiagnosticableTreeMixin {

 int get count; String get totalPrice; String get orderDate; String get orderStatus; List<OrderItemReadDto> get orderItems; List<Coupon> get coupons; UserInOrderReadDto get user;
/// Create a copy of OrderSubReadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderSubReadDtoCopyWith<OrderSubReadDto> get copyWith => _$OrderSubReadDtoCopyWithImpl<OrderSubReadDto>(this as OrderSubReadDto, _$identity);

  /// Serializes this OrderSubReadDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSubReadDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('orderDate', orderDate))..add(DiagnosticsProperty('orderStatus', orderStatus))..add(DiagnosticsProperty('orderItems', orderItems))..add(DiagnosticsProperty('coupons', coupons))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderSubReadDto&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other.orderItems, orderItems)&&const DeepCollectionEquality().equals(other.coupons, coupons)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,totalPrice,orderDate,orderStatus,const DeepCollectionEquality().hash(orderItems),const DeepCollectionEquality().hash(coupons),user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSubReadDto(count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderStatus: $orderStatus, orderItems: $orderItems, coupons: $coupons, user: $user)';
}


}

/// @nodoc
abstract mixin class $OrderSubReadDtoCopyWith<$Res>  {
  factory $OrderSubReadDtoCopyWith(OrderSubReadDto value, $Res Function(OrderSubReadDto) _then) = _$OrderSubReadDtoCopyWithImpl;
@useResult
$Res call({
 int count, String totalPrice, String orderDate, String orderStatus, List<OrderItemReadDto> orderItems, List<Coupon> coupons, UserInOrderReadDto user
});


$UserInOrderReadDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$OrderSubReadDtoCopyWithImpl<$Res>
    implements $OrderSubReadDtoCopyWith<$Res> {
  _$OrderSubReadDtoCopyWithImpl(this._self, this._then);

  final OrderSubReadDto _self;
  final $Res Function(OrderSubReadDto) _then;

/// Create a copy of OrderSubReadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderStatus = null,Object? orderItems = null,Object? coupons = null,Object? user = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,orderItems: null == orderItems ? _self.orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemReadDto>,coupons: null == coupons ? _self.coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInOrderReadDto,
  ));
}
/// Create a copy of OrderSubReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInOrderReadDtoCopyWith<$Res> get user {
  
  return $UserInOrderReadDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderSubReadDto].
extension OrderSubReadDtoPatterns on OrderSubReadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderSubReadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderSubReadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderSubReadDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderSubReadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderSubReadDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderSubReadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String totalPrice,  String orderDate,  String orderStatus,  List<OrderItemReadDto> orderItems,  List<Coupon> coupons,  UserInOrderReadDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderSubReadDto() when $default != null:
return $default(_that.count,_that.totalPrice,_that.orderDate,_that.orderStatus,_that.orderItems,_that.coupons,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String totalPrice,  String orderDate,  String orderStatus,  List<OrderItemReadDto> orderItems,  List<Coupon> coupons,  UserInOrderReadDto user)  $default,) {final _that = this;
switch (_that) {
case _OrderSubReadDto():
return $default(_that.count,_that.totalPrice,_that.orderDate,_that.orderStatus,_that.orderItems,_that.coupons,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String totalPrice,  String orderDate,  String orderStatus,  List<OrderItemReadDto> orderItems,  List<Coupon> coupons,  UserInOrderReadDto user)?  $default,) {final _that = this;
switch (_that) {
case _OrderSubReadDto() when $default != null:
return $default(_that.count,_that.totalPrice,_that.orderDate,_that.orderStatus,_that.orderItems,_that.coupons,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderSubReadDto with DiagnosticableTreeMixin implements OrderSubReadDto {
  const _OrderSubReadDto({required this.count, required this.totalPrice, required this.orderDate, required this.orderStatus, required final  List<OrderItemReadDto> orderItems, required final  List<Coupon> coupons, required this.user}): _orderItems = orderItems,_coupons = coupons;
  factory _OrderSubReadDto.fromJson(Map<String, dynamic> json) => _$OrderSubReadDtoFromJson(json);

@override final  int count;
@override final  String totalPrice;
@override final  String orderDate;
@override final  String orderStatus;
 final  List<OrderItemReadDto> _orderItems;
@override List<OrderItemReadDto> get orderItems {
  if (_orderItems is EqualUnmodifiableListView) return _orderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orderItems);
}

 final  List<Coupon> _coupons;
@override List<Coupon> get coupons {
  if (_coupons is EqualUnmodifiableListView) return _coupons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_coupons);
}

@override final  UserInOrderReadDto user;

/// Create a copy of OrderSubReadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderSubReadDtoCopyWith<_OrderSubReadDto> get copyWith => __$OrderSubReadDtoCopyWithImpl<_OrderSubReadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderSubReadDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderSubReadDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('orderDate', orderDate))..add(DiagnosticsProperty('orderStatus', orderStatus))..add(DiagnosticsProperty('orderItems', orderItems))..add(DiagnosticsProperty('coupons', coupons))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderSubReadDto&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other._orderItems, _orderItems)&&const DeepCollectionEquality().equals(other._coupons, _coupons)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,totalPrice,orderDate,orderStatus,const DeepCollectionEquality().hash(_orderItems),const DeepCollectionEquality().hash(_coupons),user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderSubReadDto(count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderStatus: $orderStatus, orderItems: $orderItems, coupons: $coupons, user: $user)';
}


}

/// @nodoc
abstract mixin class _$OrderSubReadDtoCopyWith<$Res> implements $OrderSubReadDtoCopyWith<$Res> {
  factory _$OrderSubReadDtoCopyWith(_OrderSubReadDto value, $Res Function(_OrderSubReadDto) _then) = __$OrderSubReadDtoCopyWithImpl;
@override @useResult
$Res call({
 int count, String totalPrice, String orderDate, String orderStatus, List<OrderItemReadDto> orderItems, List<Coupon> coupons, UserInOrderReadDto user
});


@override $UserInOrderReadDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$OrderSubReadDtoCopyWithImpl<$Res>
    implements _$OrderSubReadDtoCopyWith<$Res> {
  __$OrderSubReadDtoCopyWithImpl(this._self, this._then);

  final _OrderSubReadDto _self;
  final $Res Function(_OrderSubReadDto) _then;

/// Create a copy of OrderSubReadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderStatus = null,Object? orderItems = null,Object? coupons = null,Object? user = null,}) {
  return _then(_OrderSubReadDto(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderStatus: null == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as String,orderItems: null == orderItems ? _self._orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemReadDto>,coupons: null == coupons ? _self._coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInOrderReadDto,
  ));
}

/// Create a copy of OrderSubReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInOrderReadDtoCopyWith<$Res> get user {
  
  return $UserInOrderReadDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$OrderItemReadDto implements DiagnosticableTreeMixin {

 int get count; ProductDto get product;
/// Create a copy of OrderItemReadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemReadDtoCopyWith<OrderItemReadDto> get copyWith => _$OrderItemReadDtoCopyWithImpl<OrderItemReadDto>(this as OrderItemReadDto, _$identity);

  /// Serializes this OrderItemReadDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderItemReadDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemReadDto&&(identical(other.count, count) || other.count == count)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderItemReadDto(count: $count, product: $product)';
}


}

/// @nodoc
abstract mixin class $OrderItemReadDtoCopyWith<$Res>  {
  factory $OrderItemReadDtoCopyWith(OrderItemReadDto value, $Res Function(OrderItemReadDto) _then) = _$OrderItemReadDtoCopyWithImpl;
@useResult
$Res call({
 int count, ProductDto product
});


$ProductDtoCopyWith<$Res> get product;

}
/// @nodoc
class _$OrderItemReadDtoCopyWithImpl<$Res>
    implements $OrderItemReadDtoCopyWith<$Res> {
  _$OrderItemReadDtoCopyWithImpl(this._self, this._then);

  final OrderItemReadDto _self;
  final $Res Function(OrderItemReadDto) _then;

/// Create a copy of OrderItemReadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? product = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDto,
  ));
}
/// Create a copy of OrderItemReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<$Res> get product {
  
  return $ProductDtoCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderItemReadDto].
extension OrderItemReadDtoPatterns on OrderItemReadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemReadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemReadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemReadDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemReadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemReadDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemReadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  ProductDto product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemReadDto() when $default != null:
return $default(_that.count,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  ProductDto product)  $default,) {final _that = this;
switch (_that) {
case _OrderItemReadDto():
return $default(_that.count,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  ProductDto product)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemReadDto() when $default != null:
return $default(_that.count,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemReadDto with DiagnosticableTreeMixin implements OrderItemReadDto {
  const _OrderItemReadDto({required this.count, required this.product});
  factory _OrderItemReadDto.fromJson(Map<String, dynamic> json) => _$OrderItemReadDtoFromJson(json);

@override final  int count;
@override final  ProductDto product;

/// Create a copy of OrderItemReadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemReadDtoCopyWith<_OrderItemReadDto> get copyWith => __$OrderItemReadDtoCopyWithImpl<_OrderItemReadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemReadDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderItemReadDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemReadDto&&(identical(other.count, count) || other.count == count)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderItemReadDto(count: $count, product: $product)';
}


}

/// @nodoc
abstract mixin class _$OrderItemReadDtoCopyWith<$Res> implements $OrderItemReadDtoCopyWith<$Res> {
  factory _$OrderItemReadDtoCopyWith(_OrderItemReadDto value, $Res Function(_OrderItemReadDto) _then) = __$OrderItemReadDtoCopyWithImpl;
@override @useResult
$Res call({
 int count, ProductDto product
});


@override $ProductDtoCopyWith<$Res> get product;

}
/// @nodoc
class __$OrderItemReadDtoCopyWithImpl<$Res>
    implements _$OrderItemReadDtoCopyWith<$Res> {
  __$OrderItemReadDtoCopyWithImpl(this._self, this._then);

  final _OrderItemReadDto _self;
  final $Res Function(_OrderItemReadDto) _then;

/// Create a copy of OrderItemReadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? product = null,}) {
  return _then(_OrderItemReadDto(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductDto,
  ));
}

/// Create a copy of OrderItemReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductDtoCopyWith<$Res> get product {
  
  return $ProductDtoCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$UserInOrderReadDto implements DiagnosticableTreeMixin {

 UserReadDto get data;
/// Create a copy of UserInOrderReadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInOrderReadDtoCopyWith<UserInOrderReadDto> get copyWith => _$UserInOrderReadDtoCopyWithImpl<UserInOrderReadDto>(this as UserInOrderReadDto, _$identity);

  /// Serializes this UserInOrderReadDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserInOrderReadDto'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInOrderReadDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserInOrderReadDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $UserInOrderReadDtoCopyWith<$Res>  {
  factory $UserInOrderReadDtoCopyWith(UserInOrderReadDto value, $Res Function(UserInOrderReadDto) _then) = _$UserInOrderReadDtoCopyWithImpl;
@useResult
$Res call({
 UserReadDto data
});


$UserReadDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$UserInOrderReadDtoCopyWithImpl<$Res>
    implements $UserInOrderReadDtoCopyWith<$Res> {
  _$UserInOrderReadDtoCopyWithImpl(this._self, this._then);

  final UserInOrderReadDto _self;
  final $Res Function(UserInOrderReadDto) _then;

/// Create a copy of UserInOrderReadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserReadDto,
  ));
}
/// Create a copy of UserInOrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReadDtoCopyWith<$Res> get data {
  
  return $UserReadDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserInOrderReadDto].
extension UserInOrderReadDtoPatterns on UserInOrderReadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInOrderReadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInOrderReadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInOrderReadDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInOrderReadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInOrderReadDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInOrderReadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserReadDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInOrderReadDto() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserReadDto data)  $default,) {final _that = this;
switch (_that) {
case _UserInOrderReadDto():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserReadDto data)?  $default,) {final _that = this;
switch (_that) {
case _UserInOrderReadDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInOrderReadDto with DiagnosticableTreeMixin implements UserInOrderReadDto {
  const _UserInOrderReadDto({required this.data});
  factory _UserInOrderReadDto.fromJson(Map<String, dynamic> json) => _$UserInOrderReadDtoFromJson(json);

@override final  UserReadDto data;

/// Create a copy of UserInOrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInOrderReadDtoCopyWith<_UserInOrderReadDto> get copyWith => __$UserInOrderReadDtoCopyWithImpl<_UserInOrderReadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInOrderReadDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserInOrderReadDto'))
    ..add(DiagnosticsProperty('data', data));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInOrderReadDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserInOrderReadDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$UserInOrderReadDtoCopyWith<$Res> implements $UserInOrderReadDtoCopyWith<$Res> {
  factory _$UserInOrderReadDtoCopyWith(_UserInOrderReadDto value, $Res Function(_UserInOrderReadDto) _then) = __$UserInOrderReadDtoCopyWithImpl;
@override @useResult
$Res call({
 UserReadDto data
});


@override $UserReadDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$UserInOrderReadDtoCopyWithImpl<$Res>
    implements _$UserInOrderReadDtoCopyWith<$Res> {
  __$UserInOrderReadDtoCopyWithImpl(this._self, this._then);

  final _UserInOrderReadDto _self;
  final $Res Function(_UserInOrderReadDto) _then;

/// Create a copy of UserInOrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_UserInOrderReadDto(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserReadDto,
  ));
}

/// Create a copy of UserInOrderReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReadDtoCopyWith<$Res> get data {
  
  return $UserReadDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$UserReadDto implements DiagnosticableTreeMixin {

 int get id; UserSubReadDto get attributes;
/// Create a copy of UserReadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReadDtoCopyWith<UserReadDto> get copyWith => _$UserReadDtoCopyWithImpl<UserReadDto>(this as UserReadDto, _$identity);

  /// Serializes this UserReadDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserReadDto'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('attributes', attributes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReadDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserReadDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $UserReadDtoCopyWith<$Res>  {
  factory $UserReadDtoCopyWith(UserReadDto value, $Res Function(UserReadDto) _then) = _$UserReadDtoCopyWithImpl;
@useResult
$Res call({
 int id, UserSubReadDto attributes
});


$UserSubReadDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class _$UserReadDtoCopyWithImpl<$Res>
    implements $UserReadDtoCopyWith<$Res> {
  _$UserReadDtoCopyWithImpl(this._self, this._then);

  final UserReadDto _self;
  final $Res Function(UserReadDto) _then;

/// Create a copy of UserReadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as UserSubReadDto,
  ));
}
/// Create a copy of UserReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSubReadDtoCopyWith<$Res> get attributes {
  
  return $UserSubReadDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserReadDto].
extension UserReadDtoPatterns on UserReadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserReadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserReadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserReadDto value)  $default,){
final _that = this;
switch (_that) {
case _UserReadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserReadDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserReadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  UserSubReadDto attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserReadDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  UserSubReadDto attributes)  $default,) {final _that = this;
switch (_that) {
case _UserReadDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  UserSubReadDto attributes)?  $default,) {final _that = this;
switch (_that) {
case _UserReadDto() when $default != null:
return $default(_that.id,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserReadDto with DiagnosticableTreeMixin implements UserReadDto {
  const _UserReadDto({required this.id, required this.attributes});
  factory _UserReadDto.fromJson(Map<String, dynamic> json) => _$UserReadDtoFromJson(json);

@override final  int id;
@override final  UserSubReadDto attributes;

/// Create a copy of UserReadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReadDtoCopyWith<_UserReadDto> get copyWith => __$UserReadDtoCopyWithImpl<_UserReadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReadDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserReadDto'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('attributes', attributes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReadDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserReadDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$UserReadDtoCopyWith<$Res> implements $UserReadDtoCopyWith<$Res> {
  factory _$UserReadDtoCopyWith(_UserReadDto value, $Res Function(_UserReadDto) _then) = __$UserReadDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, UserSubReadDto attributes
});


@override $UserSubReadDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class __$UserReadDtoCopyWithImpl<$Res>
    implements _$UserReadDtoCopyWith<$Res> {
  __$UserReadDtoCopyWithImpl(this._self, this._then);

  final _UserReadDto _self;
  final $Res Function(_UserReadDto) _then;

/// Create a copy of UserReadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_UserReadDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as UserSubReadDto,
  ));
}

/// Create a copy of UserReadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSubReadDtoCopyWith<$Res> get attributes {
  
  return $UserSubReadDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$UserSubReadDto implements DiagnosticableTreeMixin {

 String get username; String get email; String get provider; String get confirmed; String get blocked; DateTime get createdAt; DateTime get updatedAt; String get fullName; String get phone; bool get isActive;
/// Create a copy of UserSubReadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSubReadDtoCopyWith<UserSubReadDto> get copyWith => _$UserSubReadDtoCopyWithImpl<UserSubReadDto>(this as UserSubReadDto, _$identity);

  /// Serializes this UserSubReadDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserSubReadDto'))
    ..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('provider', provider))..add(DiagnosticsProperty('confirmed', confirmed))..add(DiagnosticsProperty('blocked', blocked))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('fullName', fullName))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('isActive', isActive));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSubReadDto&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.blocked, blocked) || other.blocked == blocked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,provider,confirmed,blocked,createdAt,updatedAt,fullName,phone,isActive);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserSubReadDto(username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt, fullName: $fullName, phone: $phone, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $UserSubReadDtoCopyWith<$Res>  {
  factory $UserSubReadDtoCopyWith(UserSubReadDto value, $Res Function(UserSubReadDto) _then) = _$UserSubReadDtoCopyWithImpl;
@useResult
$Res call({
 String username, String email, String provider, String confirmed, String blocked, DateTime createdAt, DateTime updatedAt, String fullName, String phone, bool isActive
});




}
/// @nodoc
class _$UserSubReadDtoCopyWithImpl<$Res>
    implements $UserSubReadDtoCopyWith<$Res> {
  _$UserSubReadDtoCopyWithImpl(this._self, this._then);

  final UserSubReadDto _self;
  final $Res Function(UserSubReadDto) _then;

/// Create a copy of UserSubReadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? email = null,Object? provider = null,Object? confirmed = null,Object? blocked = null,Object? createdAt = null,Object? updatedAt = null,Object? fullName = null,Object? phone = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as String,blocked: null == blocked ? _self.blocked : blocked // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSubReadDto].
extension UserSubReadDtoPatterns on UserSubReadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSubReadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSubReadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSubReadDto value)  $default,){
final _that = this;
switch (_that) {
case _UserSubReadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSubReadDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserSubReadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String email,  String provider,  String confirmed,  String blocked,  DateTime createdAt,  DateTime updatedAt,  String fullName,  String phone,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSubReadDto() when $default != null:
return $default(_that.username,_that.email,_that.provider,_that.confirmed,_that.blocked,_that.createdAt,_that.updatedAt,_that.fullName,_that.phone,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String email,  String provider,  String confirmed,  String blocked,  DateTime createdAt,  DateTime updatedAt,  String fullName,  String phone,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _UserSubReadDto():
return $default(_that.username,_that.email,_that.provider,_that.confirmed,_that.blocked,_that.createdAt,_that.updatedAt,_that.fullName,_that.phone,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String email,  String provider,  String confirmed,  String blocked,  DateTime createdAt,  DateTime updatedAt,  String fullName,  String phone,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _UserSubReadDto() when $default != null:
return $default(_that.username,_that.email,_that.provider,_that.confirmed,_that.blocked,_that.createdAt,_that.updatedAt,_that.fullName,_that.phone,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSubReadDto with DiagnosticableTreeMixin implements UserSubReadDto {
  const _UserSubReadDto({required this.username, required this.email, required this.provider, required this.confirmed, required this.blocked, required this.createdAt, required this.updatedAt, required this.fullName, required this.phone, required this.isActive});
  factory _UserSubReadDto.fromJson(Map<String, dynamic> json) => _$UserSubReadDtoFromJson(json);

@override final  String username;
@override final  String email;
@override final  String provider;
@override final  String confirmed;
@override final  String blocked;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;
@override final  String fullName;
@override final  String phone;
@override final  bool isActive;

/// Create a copy of UserSubReadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSubReadDtoCopyWith<_UserSubReadDto> get copyWith => __$UserSubReadDtoCopyWithImpl<_UserSubReadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSubReadDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserSubReadDto'))
    ..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('provider', provider))..add(DiagnosticsProperty('confirmed', confirmed))..add(DiagnosticsProperty('blocked', blocked))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('fullName', fullName))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('isActive', isActive));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSubReadDto&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&(identical(other.blocked, blocked) || other.blocked == blocked)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,email,provider,confirmed,blocked,createdAt,updatedAt,fullName,phone,isActive);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserSubReadDto(username: $username, email: $email, provider: $provider, confirmed: $confirmed, blocked: $blocked, createdAt: $createdAt, updatedAt: $updatedAt, fullName: $fullName, phone: $phone, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$UserSubReadDtoCopyWith<$Res> implements $UserSubReadDtoCopyWith<$Res> {
  factory _$UserSubReadDtoCopyWith(_UserSubReadDto value, $Res Function(_UserSubReadDto) _then) = __$UserSubReadDtoCopyWithImpl;
@override @useResult
$Res call({
 String username, String email, String provider, String confirmed, String blocked, DateTime createdAt, DateTime updatedAt, String fullName, String phone, bool isActive
});




}
/// @nodoc
class __$UserSubReadDtoCopyWithImpl<$Res>
    implements _$UserSubReadDtoCopyWith<$Res> {
  __$UserSubReadDtoCopyWithImpl(this._self, this._then);

  final _UserSubReadDto _self;
  final $Res Function(_UserSubReadDto) _then;

/// Create a copy of UserSubReadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? provider = null,Object? confirmed = null,Object? blocked = null,Object? createdAt = null,Object? updatedAt = null,Object? fullName = null,Object? phone = null,Object? isActive = null,}) {
  return _then(_UserSubReadDto(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,confirmed: null == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as String,blocked: null == blocked ? _self.blocked : blocked // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
