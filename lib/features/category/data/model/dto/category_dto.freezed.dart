// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDto {

 int get id; CategorySubDto get attributes;
/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDtoCopyWith<CategoryDto> get copyWith => _$CategoryDtoCopyWithImpl<CategoryDto>(this as CategoryDto, _$identity);

  /// Serializes this CategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'CategoryDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $CategoryDtoCopyWith<$Res>  {
  factory $CategoryDtoCopyWith(CategoryDto value, $Res Function(CategoryDto) _then) = _$CategoryDtoCopyWithImpl;
@useResult
$Res call({
 int id, CategorySubDto attributes
});


$CategorySubDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._self, this._then);

  final CategoryDto _self;
  final $Res Function(CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as CategorySubDto,
  ));
}
/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorySubDtoCopyWith<$Res> get attributes {
  
  return $CategorySubDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategoryDto].
extension CategoryDtoPatterns on CategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  CategorySubDto attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  CategorySubDto attributes)  $default,) {final _that = this;
switch (_that) {
case _CategoryDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  CategorySubDto attributes)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that.id,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDto implements CategoryDto {
  const _CategoryDto({required this.id, required this.attributes});
  factory _CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

@override final  int id;
@override final  CategorySubDto attributes;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDtoCopyWith<_CategoryDto> get copyWith => __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.attributes, attributes) || other.attributes == attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,attributes);

@override
String toString() {
  return 'CategoryDto(id: $id, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$CategoryDtoCopyWith<$Res> implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(_CategoryDto value, $Res Function(_CategoryDto) _then) = __$CategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, CategorySubDto attributes
});


@override $CategorySubDtoCopyWith<$Res> get attributes;

}
/// @nodoc
class __$CategoryDtoCopyWithImpl<$Res>
    implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(this._self, this._then);

  final _CategoryDto _self;
  final $Res Function(_CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? attributes = null,}) {
  return _then(_CategoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,attributes: null == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as CategorySubDto,
  ));
}

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategorySubDtoCopyWith<$Res> get attributes {
  
  return $CategorySubDtoCopyWith<$Res>(_self.attributes, (value) {
    return _then(_self.copyWith(attributes: value));
  });
}
}


/// @nodoc
mixin _$CategorySubDto {

 String get name; String get image; String get description; ProductsInCategoryDto? get products;
/// Create a copy of CategorySubDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategorySubDtoCopyWith<CategorySubDto> get copyWith => _$CategorySubDtoCopyWithImpl<CategorySubDto>(this as CategorySubDto, _$identity);

  /// Serializes this CategorySubDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategorySubDto&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description)&&(identical(other.products, products) || other.products == products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,description,products);

@override
String toString() {
  return 'CategorySubDto(name: $name, image: $image, description: $description, products: $products)';
}


}

/// @nodoc
abstract mixin class $CategorySubDtoCopyWith<$Res>  {
  factory $CategorySubDtoCopyWith(CategorySubDto value, $Res Function(CategorySubDto) _then) = _$CategorySubDtoCopyWithImpl;
@useResult
$Res call({
 String name, String image, String description, ProductsInCategoryDto? products
});


$ProductsInCategoryDtoCopyWith<$Res>? get products;

}
/// @nodoc
class _$CategorySubDtoCopyWithImpl<$Res>
    implements $CategorySubDtoCopyWith<$Res> {
  _$CategorySubDtoCopyWithImpl(this._self, this._then);

  final CategorySubDto _self;
  final $Res Function(CategorySubDto) _then;

/// Create a copy of CategorySubDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? image = null,Object? description = null,Object? products = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as ProductsInCategoryDto?,
  ));
}
/// Create a copy of CategorySubDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsInCategoryDtoCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $ProductsInCategoryDtoCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// Adds pattern-matching-related methods to [CategorySubDto].
extension CategorySubDtoPatterns on CategorySubDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategorySubDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategorySubDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategorySubDto value)  $default,){
final _that = this;
switch (_that) {
case _CategorySubDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategorySubDto value)?  $default,){
final _that = this;
switch (_that) {
case _CategorySubDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String image,  String description,  ProductsInCategoryDto? products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategorySubDto() when $default != null:
return $default(_that.name,_that.image,_that.description,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String image,  String description,  ProductsInCategoryDto? products)  $default,) {final _that = this;
switch (_that) {
case _CategorySubDto():
return $default(_that.name,_that.image,_that.description,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String image,  String description,  ProductsInCategoryDto? products)?  $default,) {final _that = this;
switch (_that) {
case _CategorySubDto() when $default != null:
return $default(_that.name,_that.image,_that.description,_that.products);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategorySubDto implements CategorySubDto {
  const _CategorySubDto({required this.name, required this.image, required this.description, this.products});
  factory _CategorySubDto.fromJson(Map<String, dynamic> json) => _$CategorySubDtoFromJson(json);

@override final  String name;
@override final  String image;
@override final  String description;
@override final  ProductsInCategoryDto? products;

/// Create a copy of CategorySubDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategorySubDtoCopyWith<_CategorySubDto> get copyWith => __$CategorySubDtoCopyWithImpl<_CategorySubDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategorySubDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategorySubDto&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image)&&(identical(other.description, description) || other.description == description)&&(identical(other.products, products) || other.products == products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,image,description,products);

@override
String toString() {
  return 'CategorySubDto(name: $name, image: $image, description: $description, products: $products)';
}


}

/// @nodoc
abstract mixin class _$CategorySubDtoCopyWith<$Res> implements $CategorySubDtoCopyWith<$Res> {
  factory _$CategorySubDtoCopyWith(_CategorySubDto value, $Res Function(_CategorySubDto) _then) = __$CategorySubDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String image, String description, ProductsInCategoryDto? products
});


@override $ProductsInCategoryDtoCopyWith<$Res>? get products;

}
/// @nodoc
class __$CategorySubDtoCopyWithImpl<$Res>
    implements _$CategorySubDtoCopyWith<$Res> {
  __$CategorySubDtoCopyWithImpl(this._self, this._then);

  final _CategorySubDto _self;
  final $Res Function(_CategorySubDto) _then;

/// Create a copy of CategorySubDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? image = null,Object? description = null,Object? products = freezed,}) {
  return _then(_CategorySubDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as ProductsInCategoryDto?,
  ));
}

/// Create a copy of CategorySubDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductsInCategoryDtoCopyWith<$Res>? get products {
    if (_self.products == null) {
    return null;
  }

  return $ProductsInCategoryDtoCopyWith<$Res>(_self.products!, (value) {
    return _then(_self.copyWith(products: value));
  });
}
}


/// @nodoc
mixin _$ProductsInCategoryDto {

 List<ProductDto> get data;
/// Create a copy of ProductsInCategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsInCategoryDtoCopyWith<ProductsInCategoryDto> get copyWith => _$ProductsInCategoryDtoCopyWithImpl<ProductsInCategoryDto>(this as ProductsInCategoryDto, _$identity);

  /// Serializes this ProductsInCategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsInCategoryDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProductsInCategoryDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProductsInCategoryDtoCopyWith<$Res>  {
  factory $ProductsInCategoryDtoCopyWith(ProductsInCategoryDto value, $Res Function(ProductsInCategoryDto) _then) = _$ProductsInCategoryDtoCopyWithImpl;
@useResult
$Res call({
 List<ProductDto> data
});




}
/// @nodoc
class _$ProductsInCategoryDtoCopyWithImpl<$Res>
    implements $ProductsInCategoryDtoCopyWith<$Res> {
  _$ProductsInCategoryDtoCopyWithImpl(this._self, this._then);

  final ProductsInCategoryDto _self;
  final $Res Function(ProductsInCategoryDto) _then;

/// Create a copy of ProductsInCategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsInCategoryDto].
extension ProductsInCategoryDtoPatterns on ProductsInCategoryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsInCategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsInCategoryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsInCategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductsInCategoryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsInCategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsInCategoryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductDto> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsInCategoryDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductDto> data)  $default,) {final _that = this;
switch (_that) {
case _ProductsInCategoryDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductDto> data)?  $default,) {final _that = this;
switch (_that) {
case _ProductsInCategoryDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsInCategoryDto implements ProductsInCategoryDto {
  const _ProductsInCategoryDto({required final  List<ProductDto> data}): _data = data;
  factory _ProductsInCategoryDto.fromJson(Map<String, dynamic> json) => _$ProductsInCategoryDtoFromJson(json);

 final  List<ProductDto> _data;
@override List<ProductDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of ProductsInCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsInCategoryDtoCopyWith<_ProductsInCategoryDto> get copyWith => __$ProductsInCategoryDtoCopyWithImpl<_ProductsInCategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsInCategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsInCategoryDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ProductsInCategoryDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProductsInCategoryDtoCopyWith<$Res> implements $ProductsInCategoryDtoCopyWith<$Res> {
  factory _$ProductsInCategoryDtoCopyWith(_ProductsInCategoryDto value, $Res Function(_ProductsInCategoryDto) _then) = __$ProductsInCategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ProductDto> data
});




}
/// @nodoc
class __$ProductsInCategoryDtoCopyWithImpl<$Res>
    implements _$ProductsInCategoryDtoCopyWith<$Res> {
  __$ProductsInCategoryDtoCopyWithImpl(this._self, this._then);

  final _ProductsInCategoryDto _self;
  final $Res Function(_ProductsInCategoryDto) _then;

/// Create a copy of ProductsInCategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProductsInCategoryDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDto>,
  ));
}


}

// dart format on
