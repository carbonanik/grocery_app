// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Cart implements DiagnosticableTreeMixin {

 int? get id; bool get isActive; int get totalQuantity; List<CartItem>? get cartItems; int get count; String get totalPrice; String get firstItemDate; String get lastItemDate; List<Coupon>? get coupon;
/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartCopyWith<Cart> get copyWith => _$CartCopyWithImpl<Cart>(this as Cart, _$identity);

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cart'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('totalQuantity', totalQuantity))..add(DiagnosticsProperty('cartItems', cartItems))..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('firstItemDate', firstItemDate))..add(DiagnosticsProperty('lastItemDate', lastItemDate))..add(DiagnosticsProperty('coupon', coupon));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cart&&(identical(other.id, id) || other.id == id)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&const DeepCollectionEquality().equals(other.cartItems, cartItems)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.firstItemDate, firstItemDate) || other.firstItemDate == firstItemDate)&&(identical(other.lastItemDate, lastItemDate) || other.lastItemDate == lastItemDate)&&const DeepCollectionEquality().equals(other.coupon, coupon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isActive,totalQuantity,const DeepCollectionEquality().hash(cartItems),count,totalPrice,firstItemDate,lastItemDate,const DeepCollectionEquality().hash(coupon));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cart(id: $id, isActive: $isActive, totalQuantity: $totalQuantity, cartItems: $cartItems, count: $count, totalPrice: $totalPrice, firstItemDate: $firstItemDate, lastItemDate: $lastItemDate, coupon: $coupon)';
}


}

/// @nodoc
abstract mixin class $CartCopyWith<$Res>  {
  factory $CartCopyWith(Cart value, $Res Function(Cart) _then) = _$CartCopyWithImpl;
@useResult
$Res call({
 int? id, bool isActive, int totalQuantity, List<CartItem>? cartItems, int count, String totalPrice, String firstItemDate, String lastItemDate, List<Coupon>? coupon
});




}
/// @nodoc
class _$CartCopyWithImpl<$Res>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._self, this._then);

  final Cart _self;
  final $Res Function(Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? isActive = null,Object? totalQuantity = null,Object? cartItems = freezed,Object? count = null,Object? totalPrice = null,Object? firstItemDate = null,Object? lastItemDate = null,Object? coupon = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,cartItems: freezed == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartItem>?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,firstItemDate: null == firstItemDate ? _self.firstItemDate : firstItemDate // ignore: cast_nullable_to_non_nullable
as String,lastItemDate: null == lastItemDate ? _self.lastItemDate : lastItemDate // ignore: cast_nullable_to_non_nullable
as String,coupon: freezed == coupon ? _self.coupon : coupon // ignore: cast_nullable_to_non_nullable
as List<Coupon>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Cart].
extension CartPatterns on Cart {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cart value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cart value)  $default,){
final _that = this;
switch (_that) {
case _Cart():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cart value)?  $default,){
final _that = this;
switch (_that) {
case _Cart() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  bool isActive,  int totalQuantity,  List<CartItem>? cartItems,  int count,  String totalPrice,  String firstItemDate,  String lastItemDate,  List<Coupon>? coupon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.id,_that.isActive,_that.totalQuantity,_that.cartItems,_that.count,_that.totalPrice,_that.firstItemDate,_that.lastItemDate,_that.coupon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  bool isActive,  int totalQuantity,  List<CartItem>? cartItems,  int count,  String totalPrice,  String firstItemDate,  String lastItemDate,  List<Coupon>? coupon)  $default,) {final _that = this;
switch (_that) {
case _Cart():
return $default(_that.id,_that.isActive,_that.totalQuantity,_that.cartItems,_that.count,_that.totalPrice,_that.firstItemDate,_that.lastItemDate,_that.coupon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  bool isActive,  int totalQuantity,  List<CartItem>? cartItems,  int count,  String totalPrice,  String firstItemDate,  String lastItemDate,  List<Coupon>? coupon)?  $default,) {final _that = this;
switch (_that) {
case _Cart() when $default != null:
return $default(_that.id,_that.isActive,_that.totalQuantity,_that.cartItems,_that.count,_that.totalPrice,_that.firstItemDate,_that.lastItemDate,_that.coupon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cart with DiagnosticableTreeMixin implements Cart {
  const _Cart({this.id, required this.isActive, required this.totalQuantity, required final  List<CartItem>? cartItems, required this.count, required this.totalPrice, required this.firstItemDate, required this.lastItemDate, final  List<Coupon>? coupon}): _cartItems = cartItems,_coupon = coupon;
  factory _Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

@override final  int? id;
@override final  bool isActive;
@override final  int totalQuantity;
 final  List<CartItem>? _cartItems;
@override List<CartItem>? get cartItems {
  final value = _cartItems;
  if (value == null) return null;
  if (_cartItems is EqualUnmodifiableListView) return _cartItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int count;
@override final  String totalPrice;
@override final  String firstItemDate;
@override final  String lastItemDate;
 final  List<Coupon>? _coupon;
@override List<Coupon>? get coupon {
  final value = _coupon;
  if (value == null) return null;
  if (_coupon is EqualUnmodifiableListView) return _coupon;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartCopyWith<_Cart> get copyWith => __$CartCopyWithImpl<_Cart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Cart'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('isActive', isActive))..add(DiagnosticsProperty('totalQuantity', totalQuantity))..add(DiagnosticsProperty('cartItems', cartItems))..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('totalPrice', totalPrice))..add(DiagnosticsProperty('firstItemDate', firstItemDate))..add(DiagnosticsProperty('lastItemDate', lastItemDate))..add(DiagnosticsProperty('coupon', coupon));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cart&&(identical(other.id, id) || other.id == id)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&const DeepCollectionEquality().equals(other._cartItems, _cartItems)&&(identical(other.count, count) || other.count == count)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.firstItemDate, firstItemDate) || other.firstItemDate == firstItemDate)&&(identical(other.lastItemDate, lastItemDate) || other.lastItemDate == lastItemDate)&&const DeepCollectionEquality().equals(other._coupon, _coupon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isActive,totalQuantity,const DeepCollectionEquality().hash(_cartItems),count,totalPrice,firstItemDate,lastItemDate,const DeepCollectionEquality().hash(_coupon));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Cart(id: $id, isActive: $isActive, totalQuantity: $totalQuantity, cartItems: $cartItems, count: $count, totalPrice: $totalPrice, firstItemDate: $firstItemDate, lastItemDate: $lastItemDate, coupon: $coupon)';
}


}

/// @nodoc
abstract mixin class _$CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$CartCopyWith(_Cart value, $Res Function(_Cart) _then) = __$CartCopyWithImpl;
@override @useResult
$Res call({
 int? id, bool isActive, int totalQuantity, List<CartItem>? cartItems, int count, String totalPrice, String firstItemDate, String lastItemDate, List<Coupon>? coupon
});




}
/// @nodoc
class __$CartCopyWithImpl<$Res>
    implements _$CartCopyWith<$Res> {
  __$CartCopyWithImpl(this._self, this._then);

  final _Cart _self;
  final $Res Function(_Cart) _then;

/// Create a copy of Cart
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? isActive = null,Object? totalQuantity = null,Object? cartItems = freezed,Object? count = null,Object? totalPrice = null,Object? firstItemDate = null,Object? lastItemDate = null,Object? coupon = freezed,}) {
  return _then(_Cart(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,cartItems: freezed == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartItem>?,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as String,firstItemDate: null == firstItemDate ? _self.firstItemDate : firstItemDate // ignore: cast_nullable_to_non_nullable
as String,lastItemDate: null == lastItemDate ? _self.lastItemDate : lastItemDate // ignore: cast_nullable_to_non_nullable
as String,coupon: freezed == coupon ? _self._coupon : coupon // ignore: cast_nullable_to_non_nullable
as List<Coupon>?,
  ));
}


}

// dart format on
