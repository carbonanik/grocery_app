// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int? get id => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get totalQuantity => throw _privateConstructorUsedError;
  List<CartItem>? get cartItems => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get totalPrice => throw _privateConstructorUsedError;
  String get firstItemDate => throw _privateConstructorUsedError;
  String get lastItemDate => throw _privateConstructorUsedError;
  List<Coupon>? get coupon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {int? id,
      bool isActive,
      int totalQuantity,
      List<CartItem>? cartItems,
      int count,
      String totalPrice,
      String firstItemDate,
      String lastItemDate,
      List<Coupon>? coupon});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = null,
    Object? totalQuantity = null,
    Object? cartItems = freezed,
    Object? count = null,
    Object? totalPrice = null,
    Object? firstItemDate = null,
    Object? lastItemDate = null,
    Object? coupon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      firstItemDate: null == firstItemDate
          ? _value.firstItemDate
          : firstItemDate // ignore: cast_nullable_to_non_nullable
              as String,
      lastItemDate: null == lastItemDate
          ? _value.lastItemDate
          : lastItemDate // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool isActive,
      int totalQuantity,
      List<CartItem>? cartItems,
      int count,
      String totalPrice,
      String firstItemDate,
      String lastItemDate,
      List<Coupon>? coupon});
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res, _$_Cart>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isActive = null,
    Object? totalQuantity = null,
    Object? cartItems = freezed,
    Object? count = null,
    Object? totalPrice = null,
    Object? firstItemDate = null,
    Object? lastItemDate = null,
    Object? coupon = freezed,
  }) {
    return _then(_$_Cart(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      totalQuantity: null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      cartItems: freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String,
      firstItemDate: null == firstItemDate
          ? _value.firstItemDate
          : firstItemDate // ignore: cast_nullable_to_non_nullable
              as String,
      lastItemDate: null == lastItemDate
          ? _value.lastItemDate
          : lastItemDate // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: freezed == coupon
          ? _value._coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as List<Coupon>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart with DiagnosticableTreeMixin implements _Cart {
  const _$_Cart(
      {this.id,
      required this.isActive,
      required this.totalQuantity,
      required final List<CartItem>? cartItems,
      required this.count,
      required this.totalPrice,
      required this.firstItemDate,
      required this.lastItemDate,
      final List<Coupon>? coupon})
      : _cartItems = cartItems,
        _coupon = coupon;

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  final int? id;
  @override
  final bool isActive;
  @override
  final int totalQuantity;
  final List<CartItem>? _cartItems;
  @override
  List<CartItem>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int count;
  @override
  final String totalPrice;
  @override
  final String firstItemDate;
  @override
  final String lastItemDate;
  final List<Coupon>? _coupon;
  @override
  List<Coupon>? get coupon {
    final value = _coupon;
    if (value == null) return null;
    if (_coupon is EqualUnmodifiableListView) return _coupon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Cart(id: $id, isActive: $isActive, totalQuantity: $totalQuantity, cartItems: $cartItems, count: $count, totalPrice: $totalPrice, firstItemDate: $firstItemDate, lastItemDate: $lastItemDate, coupon: $coupon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Cart'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('totalQuantity', totalQuantity))
      ..add(DiagnosticsProperty('cartItems', cartItems))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('firstItemDate', firstItemDate))
      ..add(DiagnosticsProperty('lastItemDate', lastItemDate))
      ..add(DiagnosticsProperty('coupon', coupon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.firstItemDate, firstItemDate) ||
                other.firstItemDate == firstItemDate) &&
            (identical(other.lastItemDate, lastItemDate) ||
                other.lastItemDate == lastItemDate) &&
            const DeepCollectionEquality().equals(other._coupon, _coupon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isActive,
      totalQuantity,
      const DeepCollectionEquality().hash(_cartItems),
      count,
      totalPrice,
      firstItemDate,
      lastItemDate,
      const DeepCollectionEquality().hash(_coupon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {final int? id,
      required final bool isActive,
      required final int totalQuantity,
      required final List<CartItem>? cartItems,
      required final int count,
      required final String totalPrice,
      required final String firstItemDate,
      required final String lastItemDate,
      final List<Coupon>? coupon}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  int? get id;
  @override
  bool get isActive;
  @override
  int get totalQuantity;
  @override
  List<CartItem>? get cartItems;
  @override
  int get count;
  @override
  String get totalPrice;
  @override
  String get firstItemDate;
  @override
  String get lastItemDate;
  @override
  List<Coupon>? get coupon;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}
