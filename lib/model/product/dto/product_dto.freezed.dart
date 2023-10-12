// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  int get id => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {int id,
      double price,
      String name,
      String description,
      String image,
      String weight});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDtoImplCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$ProductDtoImplCopyWith(
          _$ProductDtoImpl value, $Res Function(_$ProductDtoImpl) then) =
      __$$ProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double price,
      String name,
      String description,
      String image,
      String weight});
}

/// @nodoc
class __$$ProductDtoImplCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$ProductDtoImpl>
    implements _$$ProductDtoImplCopyWith<$Res> {
  __$$ProductDtoImplCopyWithImpl(
      _$ProductDtoImpl _value, $Res Function(_$ProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? weight = null,
  }) {
    return _then(_$ProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDtoImpl with DiagnosticableTreeMixin implements _ProductDto {
  const _$ProductDtoImpl(
      {required this.id,
      required this.price,
      required this.name,
      required this.description,
      required this.image,
      required this.weight});

  factory _$ProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoImplFromJson(json);

  @override
  final int id;
  @override
  final double price;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final String weight;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDto(id: $id, price: $price, name: $name, description: $description, image: $image, weight: $weight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('weight', weight));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, price, name, description, image, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      __$$ProductDtoImplCopyWithImpl<_$ProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDto implements ProductDto {
  const factory _ProductDto(
      {required final int id,
      required final double price,
      required final String name,
      required final String description,
      required final String image,
      required final String weight}) = _$ProductDtoImpl;

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$ProductDtoImpl.fromJson;

  @override
  int get id;
  @override
  double get price;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  String get weight;
  @override
  @JsonKey(ignore: true)
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDtoSub _$ProductDtoSubFromJson(Map<String, dynamic> json) {
  return _ProductDtoSub.fromJson(json);
}

/// @nodoc
mixin _$ProductDtoSub {
  double get price => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoSubCopyWith<ProductDtoSub> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoSubCopyWith<$Res> {
  factory $ProductDtoSubCopyWith(
          ProductDtoSub value, $Res Function(ProductDtoSub) then) =
      _$ProductDtoSubCopyWithImpl<$Res, ProductDtoSub>;
  @useResult
  $Res call(
      {double price,
      String name,
      String description,
      String image,
      String weight});
}

/// @nodoc
class _$ProductDtoSubCopyWithImpl<$Res, $Val extends ProductDtoSub>
    implements $ProductDtoSubCopyWith<$Res> {
  _$ProductDtoSubCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDtoSubImplCopyWith<$Res>
    implements $ProductDtoSubCopyWith<$Res> {
  factory _$$ProductDtoSubImplCopyWith(
          _$ProductDtoSubImpl value, $Res Function(_$ProductDtoSubImpl) then) =
      __$$ProductDtoSubImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double price,
      String name,
      String description,
      String image,
      String weight});
}

/// @nodoc
class __$$ProductDtoSubImplCopyWithImpl<$Res>
    extends _$ProductDtoSubCopyWithImpl<$Res, _$ProductDtoSubImpl>
    implements _$$ProductDtoSubImplCopyWith<$Res> {
  __$$ProductDtoSubImplCopyWithImpl(
      _$ProductDtoSubImpl _value, $Res Function(_$ProductDtoSubImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? weight = null,
  }) {
    return _then(_$ProductDtoSubImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDtoSubImpl
    with DiagnosticableTreeMixin
    implements _ProductDtoSub {
  const _$ProductDtoSubImpl(
      {required this.price,
      required this.name,
      required this.description,
      required this.image,
      required this.weight});

  factory _$ProductDtoSubImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoSubImplFromJson(json);

  @override
  final double price;
  @override
  final String name;
  @override
  final String description;
  @override
  final String image;
  @override
  final String weight;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDtoSub(price: $price, name: $name, description: $description, image: $image, weight: $weight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDtoSub'))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('weight', weight));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoSubImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, name, description, image, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoSubImplCopyWith<_$ProductDtoSubImpl> get copyWith =>
      __$$ProductDtoSubImplCopyWithImpl<_$ProductDtoSubImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoSubImplToJson(
      this,
    );
  }
}

abstract class _ProductDtoSub implements ProductDtoSub {
  const factory _ProductDtoSub(
      {required final double price,
      required final String name,
      required final String description,
      required final String image,
      required final String weight}) = _$ProductDtoSubImpl;

  factory _ProductDtoSub.fromJson(Map<String, dynamic> json) =
      _$ProductDtoSubImpl.fromJson;

  @override
  double get price;
  @override
  String get name;
  @override
  String get description;
  @override
  String get image;
  @override
  String get weight;
  @override
  @JsonKey(ignore: true)
  _$$ProductDtoSubImplCopyWith<_$ProductDtoSubImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
