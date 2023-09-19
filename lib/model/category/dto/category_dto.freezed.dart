// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return _CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  int get id => throw _privateConstructorUsedError;
  CategorySubDto get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call({int id, CategorySubDto attributes});

  $CategorySubDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

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
              as CategorySubDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategorySubDtoCopyWith<$Res> get attributes {
    return $CategorySubDtoCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$_CategoryDtoCopyWith(
          _$_CategoryDto value, $Res Function(_$_CategoryDto) then) =
      __$$_CategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, CategorySubDto attributes});

  @override
  $CategorySubDtoCopyWith<$Res> get attributes;
}

/// @nodoc
class __$$_CategoryDtoCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$_CategoryDto>
    implements _$$_CategoryDtoCopyWith<$Res> {
  __$$_CategoryDtoCopyWithImpl(
      _$_CategoryDto _value, $Res Function(_$_CategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? attributes = null,
  }) {
    return _then(_$_CategoryDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as CategorySubDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDto implements _CategoryDto {
  const _$_CategoryDto({required this.id, required this.attributes});

  factory _$_CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDtoFromJson(json);

  @override
  final int id;
  @override
  final CategorySubDto attributes;

  @override
  String toString() {
    return 'CategoryDto(id: $id, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDto &&
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
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      __$$_CategoryDtoCopyWithImpl<_$_CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDtoToJson(
      this,
    );
  }
}

abstract class _CategoryDto implements CategoryDto {
  const factory _CategoryDto(
      {required final int id,
      required final CategorySubDto attributes}) = _$_CategoryDto;

  factory _CategoryDto.fromJson(Map<String, dynamic> json) =
      _$_CategoryDto.fromJson;

  @override
  int get id;
  @override
  CategorySubDto get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDtoCopyWith<_$_CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CategorySubDto _$CategorySubDtoFromJson(Map<String, dynamic> json) {
  return _CategorySubDto.fromJson(json);
}

/// @nodoc
mixin _$CategorySubDto {
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  ProductsInCategoryDto? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategorySubDtoCopyWith<CategorySubDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorySubDtoCopyWith<$Res> {
  factory $CategorySubDtoCopyWith(
          CategorySubDto value, $Res Function(CategorySubDto) then) =
      _$CategorySubDtoCopyWithImpl<$Res, CategorySubDto>;
  @useResult
  $Res call(
      {String name,
      String image,
      String description,
      ProductsInCategoryDto? products});

  $ProductsInCategoryDtoCopyWith<$Res>? get products;
}

/// @nodoc
class _$CategorySubDtoCopyWithImpl<$Res, $Val extends CategorySubDto>
    implements $CategorySubDtoCopyWith<$Res> {
  _$CategorySubDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductsInCategoryDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsInCategoryDtoCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $ProductsInCategoryDtoCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CategorySubDtoCopyWith<$Res>
    implements $CategorySubDtoCopyWith<$Res> {
  factory _$$_CategorySubDtoCopyWith(
          _$_CategorySubDto value, $Res Function(_$_CategorySubDto) then) =
      __$$_CategorySubDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String image,
      String description,
      ProductsInCategoryDto? products});

  @override
  $ProductsInCategoryDtoCopyWith<$Res>? get products;
}

/// @nodoc
class __$$_CategorySubDtoCopyWithImpl<$Res>
    extends _$CategorySubDtoCopyWithImpl<$Res, _$_CategorySubDto>
    implements _$$_CategorySubDtoCopyWith<$Res> {
  __$$_CategorySubDtoCopyWithImpl(
      _$_CategorySubDto _value, $Res Function(_$_CategorySubDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
    Object? description = null,
    Object? products = freezed,
  }) {
    return _then(_$_CategorySubDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductsInCategoryDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategorySubDto implements _CategorySubDto {
  const _$_CategorySubDto(
      {required this.name,
      required this.image,
      required this.description,
      this.products});

  factory _$_CategorySubDto.fromJson(Map<String, dynamic> json) =>
      _$$_CategorySubDtoFromJson(json);

  @override
  final String name;
  @override
  final String image;
  @override
  final String description;
  @override
  final ProductsInCategoryDto? products;

  @override
  String toString() {
    return 'CategorySubDto(name: $name, image: $image, description: $description, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySubDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, image, description, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySubDtoCopyWith<_$_CategorySubDto> get copyWith =>
      __$$_CategorySubDtoCopyWithImpl<_$_CategorySubDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategorySubDtoToJson(
      this,
    );
  }
}

abstract class _CategorySubDto implements CategorySubDto {
  const factory _CategorySubDto(
      {required final String name,
      required final String image,
      required final String description,
      final ProductsInCategoryDto? products}) = _$_CategorySubDto;

  factory _CategorySubDto.fromJson(Map<String, dynamic> json) =
      _$_CategorySubDto.fromJson;

  @override
  String get name;
  @override
  String get image;
  @override
  String get description;
  @override
  ProductsInCategoryDto? get products;
  @override
  @JsonKey(ignore: true)
  _$$_CategorySubDtoCopyWith<_$_CategorySubDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductsInCategoryDto _$ProductsInCategoryDtoFromJson(
    Map<String, dynamic> json) {
  return _ProductsInCategoryDto.fromJson(json);
}

/// @nodoc
mixin _$ProductsInCategoryDto {
  List<ProductDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsInCategoryDtoCopyWith<ProductsInCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsInCategoryDtoCopyWith<$Res> {
  factory $ProductsInCategoryDtoCopyWith(ProductsInCategoryDto value,
          $Res Function(ProductsInCategoryDto) then) =
      _$ProductsInCategoryDtoCopyWithImpl<$Res, ProductsInCategoryDto>;
  @useResult
  $Res call({List<ProductDto> data});
}

/// @nodoc
class _$ProductsInCategoryDtoCopyWithImpl<$Res,
        $Val extends ProductsInCategoryDto>
    implements $ProductsInCategoryDtoCopyWith<$Res> {
  _$ProductsInCategoryDtoCopyWithImpl(this._value, this._then);

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
              as List<ProductDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductsInCategoryDtoCopyWith<$Res>
    implements $ProductsInCategoryDtoCopyWith<$Res> {
  factory _$$_ProductsInCategoryDtoCopyWith(_$_ProductsInCategoryDto value,
          $Res Function(_$_ProductsInCategoryDto) then) =
      __$$_ProductsInCategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductDto> data});
}

/// @nodoc
class __$$_ProductsInCategoryDtoCopyWithImpl<$Res>
    extends _$ProductsInCategoryDtoCopyWithImpl<$Res, _$_ProductsInCategoryDto>
    implements _$$_ProductsInCategoryDtoCopyWith<$Res> {
  __$$_ProductsInCategoryDtoCopyWithImpl(_$_ProductsInCategoryDto _value,
      $Res Function(_$_ProductsInCategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ProductsInCategoryDto(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductsInCategoryDto implements _ProductsInCategoryDto {
  const _$_ProductsInCategoryDto({required final List<ProductDto> data})
      : _data = data;

  factory _$_ProductsInCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductsInCategoryDtoFromJson(json);

  final List<ProductDto> _data;
  @override
  List<ProductDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductsInCategoryDto(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductsInCategoryDto &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductsInCategoryDtoCopyWith<_$_ProductsInCategoryDto> get copyWith =>
      __$$_ProductsInCategoryDtoCopyWithImpl<_$_ProductsInCategoryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductsInCategoryDtoToJson(
      this,
    );
  }
}

abstract class _ProductsInCategoryDto implements ProductsInCategoryDto {
  const factory _ProductsInCategoryDto({required final List<ProductDto> data}) =
      _$_ProductsInCategoryDto;

  factory _ProductsInCategoryDto.fromJson(Map<String, dynamic> json) =
      _$_ProductsInCategoryDto.fromJson;

  @override
  List<ProductDto> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProductsInCategoryDtoCopyWith<_$_ProductsInCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
