// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderCreate implements DiagnosticableTreeMixin {

 int get userId; int get count; String get totalPrice; String get orderDate; List<OrderItem> get orderItems; List<Coupon> get coupons;
/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCreateCopyWith<OrderCreate> get copyWith => _$OrderCreateCopyWithImpl<OrderCreate>(this as OrderCreate, _$identity);

  /// Serializes this OrderCreate to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderCreate'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('orderDate', orderDate))..add(DiagnosticsProperty('orderItems', orderItems))..add(DiagnosticsProperty('coupons', coupons));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCreate&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&const DeepCollectionEquality().equals(other.orderItems, orderItems)&&const DeepCollectionEquality().equals(other.coupons, coupons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,count,totalPrice,orderDate,const DeepCollectionEquality().hash(orderItems),const DeepCollectionEquality().hash(coupons));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderCreate(userId: $userId, count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderItems: $orderItems, coupons: $coupons)';
}


}

/// @nodoc
abstract mixin class $OrderCreateCopyWith<$Res>  {
  factory $OrderCreateCopyWith(OrderCreate value, $Res Function(OrderCreate) _then) = _$OrderCreateCopyWithImpl;
@useResult
$Res call({
 int userId, int count, String totalPrice, String orderDate, List<OrderItem> orderItems, List<Coupon> coupons
});




}
/// @nodoc
class _$OrderCreateCopyWithImpl<$Res>
    implements $OrderCreateCopyWith<$Res> {
  _$OrderCreateCopyWithImpl(this._self, this._then);

  final OrderCreate _self;
  final $Res Function(OrderCreate) _then;

/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderItems = null,Object? coupons = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderItems: null == orderItems ? _self.orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,coupons: null == coupons ? _self.coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderCreate].
extension OrderCreatePatterns on OrderCreate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCreate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCreate value)  $default,){
final _that = this;
switch (_that) {
case _OrderCreate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCreate value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  int count,  String totalPrice,  String orderDate,  List<OrderItem> orderItems,  List<Coupon> coupons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
return $default(_that.userId,_that.count,_that.totalPrice,_that.orderDate,_that.orderItems,_that.coupons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  int count,  String totalPrice,  String orderDate,  List<OrderItem> orderItems,  List<Coupon> coupons)  $default,) {final _that = this;
switch (_that) {
case _OrderCreate():
return $default(_that.userId,_that.count,_that.totalPrice,_that.orderDate,_that.orderItems,_that.coupons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  int count,  String totalPrice,  String orderDate,  List<OrderItem> orderItems,  List<Coupon> coupons)?  $default,) {final _that = this;
switch (_that) {
case _OrderCreate() when $default != null:
return $default(_that.userId,_that.count,_that.totalPrice,_that.orderDate,_that.orderItems,_that.coupons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderCreate with DiagnosticableTreeMixin implements OrderCreate {
  const _OrderCreate({required this.userId, required this.count, required this.totalPrice, required this.orderDate, required final  List<OrderItem> orderItems, required final  List<Coupon> coupons}): _orderItems = orderItems,_coupons = coupons;
  factory _OrderCreate.fromJson(Map<String, dynamic> json) => _$OrderCreateFromJson(json);

@override final  int userId;
@override final  int count;
@override final  String totalPrice;
@override final  String orderDate;
 final  List<OrderItem> _orderItems;
@override List<OrderItem> get orderItems {
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


/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCreateCopyWith<_OrderCreate> get copyWith => __$OrderCreateCopyWithImpl<_OrderCreate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderCreateToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderCreate'))
    ..add(DiagnosticsProperty('userId', userId))..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('orderDate', orderDate))..add(DiagnosticsProperty('orderItems', orderItems))..add(DiagnosticsProperty('coupons', coupons));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCreate&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&const DeepCollectionEquality().equals(other._orderItems, _orderItems)&&const DeepCollectionEquality().equals(other._coupons, _coupons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,count,totalPrice,orderDate,const DeepCollectionEquality().hash(_orderItems),const DeepCollectionEquality().hash(_coupons));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderCreate(userId: $userId, count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderItems: $orderItems, coupons: $coupons)';
}


}

/// @nodoc
abstract mixin class _$OrderCreateCopyWith<$Res> implements $OrderCreateCopyWith<$Res> {
  factory _$OrderCreateCopyWith(_OrderCreate value, $Res Function(_OrderCreate) _then) = __$OrderCreateCopyWithImpl;
@override @useResult
$Res call({
 int userId, int count, String totalPrice, String orderDate, List<OrderItem> orderItems, List<Coupon> coupons
});




}
/// @nodoc
class __$OrderCreateCopyWithImpl<$Res>
    implements _$OrderCreateCopyWith<$Res> {
  __$OrderCreateCopyWithImpl(this._self, this._then);

  final _OrderCreate _self;
  final $Res Function(_OrderCreate) _then;

/// Create a copy of OrderCreate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderItems = null,Object? coupons = null,}) {
  return _then(_OrderCreate(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderItems: null == orderItems ? _self._orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItem>,coupons: null == coupons ? _self._coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,
  ));
}


}


/// @nodoc
mixin _$OrderCreateDto implements DiagnosticableTreeMixin {

 int get count; String get totalPrice; String get orderDate; List<OrderItemCreateDto> get orderItems; List<Coupon> get coupons; UserInOrderCreateDto get user;
/// Create a copy of OrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderCreateDtoCopyWith<OrderCreateDto> get copyWith => _$OrderCreateDtoCopyWithImpl<OrderCreateDto>(this as OrderCreateDto, _$identity);

  /// Serializes this OrderCreateDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderCreateDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('orderDate', orderDate))..add(DiagnosticsProperty('orderItems', orderItems))..add(DiagnosticsProperty('coupons', coupons))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderCreateDto&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&const DeepCollectionEquality().equals(other.orderItems, orderItems)&&const DeepCollectionEquality().equals(other.coupons, coupons)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,totalPrice,orderDate,const DeepCollectionEquality().hash(orderItems),const DeepCollectionEquality().hash(coupons),user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderCreateDto(count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderItems: $orderItems, coupons: $coupons, user: $user)';
}


}

/// @nodoc
abstract mixin class $OrderCreateDtoCopyWith<$Res>  {
  factory $OrderCreateDtoCopyWith(OrderCreateDto value, $Res Function(OrderCreateDto) _then) = _$OrderCreateDtoCopyWithImpl;
@useResult
$Res call({
 int count, String totalPrice, String orderDate, List<OrderItemCreateDto> orderItems, List<Coupon> coupons, UserInOrderCreateDto user
});


$UserInOrderCreateDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$OrderCreateDtoCopyWithImpl<$Res>
    implements $OrderCreateDtoCopyWith<$Res> {
  _$OrderCreateDtoCopyWithImpl(this._self, this._then);

  final OrderCreateDto _self;
  final $Res Function(OrderCreateDto) _then;

/// Create a copy of OrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderItems = null,Object? coupons = null,Object? user = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderItems: null == orderItems ? _self.orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemCreateDto>,coupons: null == coupons ? _self.coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInOrderCreateDto,
  ));
}
/// Create a copy of OrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInOrderCreateDtoCopyWith<$Res> get user {
  
  return $UserInOrderCreateDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderCreateDto].
extension OrderCreateDtoPatterns on OrderCreateDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderCreateDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderCreateDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderCreateDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderCreateDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderCreateDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderCreateDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  String totalPrice,  String orderDate,  List<OrderItemCreateDto> orderItems,  List<Coupon> coupons,  UserInOrderCreateDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderCreateDto() when $default != null:
return $default(_that.count,_that.totalPrice,_that.orderDate,_that.orderItems,_that.coupons,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  String totalPrice,  String orderDate,  List<OrderItemCreateDto> orderItems,  List<Coupon> coupons,  UserInOrderCreateDto user)  $default,) {final _that = this;
switch (_that) {
case _OrderCreateDto():
return $default(_that.count,_that.totalPrice,_that.orderDate,_that.orderItems,_that.coupons,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  String totalPrice,  String orderDate,  List<OrderItemCreateDto> orderItems,  List<Coupon> coupons,  UserInOrderCreateDto user)?  $default,) {final _that = this;
switch (_that) {
case _OrderCreateDto() when $default != null:
return $default(_that.count,_that.totalPrice,_that.orderDate,_that.orderItems,_that.coupons,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderCreateDto with DiagnosticableTreeMixin implements OrderCreateDto {
  const _OrderCreateDto({required this.count, required this.totalPrice, required this.orderDate, required final  List<OrderItemCreateDto> orderItems, required final  List<Coupon> coupons, required this.user}): _orderItems = orderItems,_coupons = coupons;
  factory _OrderCreateDto.fromJson(Map<String, dynamic> json) => _$OrderCreateDtoFromJson(json);

@override final  int count;
@override final  String totalPrice;
@override final  String orderDate;
 final  List<OrderItemCreateDto> _orderItems;
@override List<OrderItemCreateDto> get orderItems {
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

@override final  UserInOrderCreateDto user;

/// Create a copy of OrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderCreateDtoCopyWith<_OrderCreateDto> get copyWith => __$OrderCreateDtoCopyWithImpl<_OrderCreateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderCreateDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderCreateDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('orderDate', orderDate))..add(DiagnosticsProperty('orderItems', orderItems))..add(DiagnosticsProperty('coupons', coupons))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderCreateDto&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&const DeepCollectionEquality().equals(other._orderItems, _orderItems)&&const DeepCollectionEquality().equals(other._coupons, _coupons)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,totalPrice,orderDate,const DeepCollectionEquality().hash(_orderItems),const DeepCollectionEquality().hash(_coupons),user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderCreateDto(count: $count, totalPrice: $totalPrice, orderDate: $orderDate, orderItems: $orderItems, coupons: $coupons, user: $user)';
}


}

/// @nodoc
abstract mixin class _$OrderCreateDtoCopyWith<$Res> implements $OrderCreateDtoCopyWith<$Res> {
  factory _$OrderCreateDtoCopyWith(_OrderCreateDto value, $Res Function(_OrderCreateDto) _then) = __$OrderCreateDtoCopyWithImpl;
@override @useResult
$Res call({
 int count, String totalPrice, String orderDate, List<OrderItemCreateDto> orderItems, List<Coupon> coupons, UserInOrderCreateDto user
});


@override $UserInOrderCreateDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$OrderCreateDtoCopyWithImpl<$Res>
    implements _$OrderCreateDtoCopyWith<$Res> {
  __$OrderCreateDtoCopyWithImpl(this._self, this._then);

  final _OrderCreateDto _self;
  final $Res Function(_OrderCreateDto) _then;

/// Create a copy of OrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? totalPrice = null,Object? orderDate = null,Object? orderItems = null,Object? coupons = null,Object? user = null,}) {
  return _then(_OrderCreateDto(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String,orderItems: null == orderItems ? _self._orderItems : orderItems // ignore: cast_nullable_to_non_nullable
as List<OrderItemCreateDto>,coupons: null == coupons ? _self._coupons : coupons // ignore: cast_nullable_to_non_nullable
as List<Coupon>,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInOrderCreateDto,
  ));
}

/// Create a copy of OrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInOrderCreateDtoCopyWith<$Res> get user {
  
  return $UserInOrderCreateDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$OrderItemCreateDto implements DiagnosticableTreeMixin {

 int get count; Product get product;
/// Create a copy of OrderItemCreateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemCreateDtoCopyWith<OrderItemCreateDto> get copyWith => _$OrderItemCreateDtoCopyWithImpl<OrderItemCreateDto>(this as OrderItemCreateDto, _$identity);

  /// Serializes this OrderItemCreateDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderItemCreateDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemCreateDto&&(identical(other.count, count) || other.count == count)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderItemCreateDto(count: $count, product: $product)';
}


}

/// @nodoc
abstract mixin class $OrderItemCreateDtoCopyWith<$Res>  {
  factory $OrderItemCreateDtoCopyWith(OrderItemCreateDto value, $Res Function(OrderItemCreateDto) _then) = _$OrderItemCreateDtoCopyWithImpl;
@useResult
$Res call({
 int count, Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$OrderItemCreateDtoCopyWithImpl<$Res>
    implements $OrderItemCreateDtoCopyWith<$Res> {
  _$OrderItemCreateDtoCopyWithImpl(this._self, this._then);

  final OrderItemCreateDto _self;
  final $Res Function(OrderItemCreateDto) _then;

/// Create a copy of OrderItemCreateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? product = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}
/// Create a copy of OrderItemCreateDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderItemCreateDto].
extension OrderItemCreateDtoPatterns on OrderItemCreateDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemCreateDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemCreateDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemCreateDto value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemCreateDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemCreateDto value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemCreateDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  Product product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemCreateDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  Product product)  $default,) {final _that = this;
switch (_that) {
case _OrderItemCreateDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  Product product)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemCreateDto() when $default != null:
return $default(_that.count,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderItemCreateDto with DiagnosticableTreeMixin implements OrderItemCreateDto {
  const _OrderItemCreateDto({required this.count, required this.product});
  factory _OrderItemCreateDto.fromJson(Map<String, dynamic> json) => _$OrderItemCreateDtoFromJson(json);

@override final  int count;
@override final  Product product;

/// Create a copy of OrderItemCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemCreateDtoCopyWith<_OrderItemCreateDto> get copyWith => __$OrderItemCreateDtoCopyWithImpl<_OrderItemCreateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemCreateDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OrderItemCreateDto'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('product', product));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemCreateDto&&(identical(other.count, count) || other.count == count)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,product);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OrderItemCreateDto(count: $count, product: $product)';
}


}

/// @nodoc
abstract mixin class _$OrderItemCreateDtoCopyWith<$Res> implements $OrderItemCreateDtoCopyWith<$Res> {
  factory _$OrderItemCreateDtoCopyWith(_OrderItemCreateDto value, $Res Function(_OrderItemCreateDto) _then) = __$OrderItemCreateDtoCopyWithImpl;
@override @useResult
$Res call({
 int count, Product product
});


@override $ProductCopyWith<$Res> get product;

}
/// @nodoc
class __$OrderItemCreateDtoCopyWithImpl<$Res>
    implements _$OrderItemCreateDtoCopyWith<$Res> {
  __$OrderItemCreateDtoCopyWithImpl(this._self, this._then);

  final _OrderItemCreateDto _self;
  final $Res Function(_OrderItemCreateDto) _then;

/// Create a copy of OrderItemCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? product = null,}) {
  return _then(_OrderItemCreateDto(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of OrderItemCreateDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$UserInOrderCreateDto implements DiagnosticableTreeMixin {

 List<int> get connect;
/// Create a copy of UserInOrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInOrderCreateDtoCopyWith<UserInOrderCreateDto> get copyWith => _$UserInOrderCreateDtoCopyWithImpl<UserInOrderCreateDto>(this as UserInOrderCreateDto, _$identity);

  /// Serializes this UserInOrderCreateDto to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserInOrderCreateDto'))
    ..add(DiagnosticsProperty('connect', connect));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInOrderCreateDto&&const DeepCollectionEquality().equals(other.connect, connect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(connect));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserInOrderCreateDto(connect: $connect)';
}


}

/// @nodoc
abstract mixin class $UserInOrderCreateDtoCopyWith<$Res>  {
  factory $UserInOrderCreateDtoCopyWith(UserInOrderCreateDto value, $Res Function(UserInOrderCreateDto) _then) = _$UserInOrderCreateDtoCopyWithImpl;
@useResult
$Res call({
 List<int> connect
});




}
/// @nodoc
class _$UserInOrderCreateDtoCopyWithImpl<$Res>
    implements $UserInOrderCreateDtoCopyWith<$Res> {
  _$UserInOrderCreateDtoCopyWithImpl(this._self, this._then);

  final UserInOrderCreateDto _self;
  final $Res Function(UserInOrderCreateDto) _then;

/// Create a copy of UserInOrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? connect = null,}) {
  return _then(_self.copyWith(
connect: null == connect ? _self.connect : connect // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInOrderCreateDto].
extension UserInOrderCreateDtoPatterns on UserInOrderCreateDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInOrderCreateDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInOrderCreateDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInOrderCreateDto value)  $default,){
final _that = this;
switch (_that) {
case _UserInOrderCreateDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInOrderCreateDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserInOrderCreateDto() when $default != null:
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
case _UserInOrderCreateDto() when $default != null:
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
case _UserInOrderCreateDto():
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
case _UserInOrderCreateDto() when $default != null:
return $default(_that.connect);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInOrderCreateDto with DiagnosticableTreeMixin implements UserInOrderCreateDto {
  const _UserInOrderCreateDto({required final  List<int> connect}): _connect = connect;
  factory _UserInOrderCreateDto.fromJson(Map<String, dynamic> json) => _$UserInOrderCreateDtoFromJson(json);

 final  List<int> _connect;
@override List<int> get connect {
  if (_connect is EqualUnmodifiableListView) return _connect;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_connect);
}


/// Create a copy of UserInOrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInOrderCreateDtoCopyWith<_UserInOrderCreateDto> get copyWith => __$UserInOrderCreateDtoCopyWithImpl<_UserInOrderCreateDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInOrderCreateDtoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserInOrderCreateDto'))
    ..add(DiagnosticsProperty('connect', connect));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInOrderCreateDto&&const DeepCollectionEquality().equals(other._connect, _connect));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_connect));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserInOrderCreateDto(connect: $connect)';
}


}

/// @nodoc
abstract mixin class _$UserInOrderCreateDtoCopyWith<$Res> implements $UserInOrderCreateDtoCopyWith<$Res> {
  factory _$UserInOrderCreateDtoCopyWith(_UserInOrderCreateDto value, $Res Function(_UserInOrderCreateDto) _then) = __$UserInOrderCreateDtoCopyWithImpl;
@override @useResult
$Res call({
 List<int> connect
});




}
/// @nodoc
class __$UserInOrderCreateDtoCopyWithImpl<$Res>
    implements _$UserInOrderCreateDtoCopyWith<$Res> {
  __$UserInOrderCreateDtoCopyWithImpl(this._self, this._then);

  final _UserInOrderCreateDto _self;
  final $Res Function(_UserInOrderCreateDto) _then;

/// Create a copy of UserInOrderCreateDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? connect = null,}) {
  return _then(_UserInOrderCreateDto(
connect: null == connect ? _self._connect : connect // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
