// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<_Product> {
  @override
  final typeId = 7;

  @override
  _Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _Product(
      id: (fields[0] as num).toInt(),
      price: (fields[1] as num).toDouble(),
      name: fields[2] as String,
      description: fields[3] as String,
      image: fields[4] as String,
      weight: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _Product obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: (json['id'] as num).toInt(),
  price: (json['price'] as num).toDouble(),
  name: json['name'] as String,
  description: json['description'] as String,
  image: json['image'] as String,
  weight: json['weight'] as String,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'name': instance.name,
  'description': instance.description,
  'image': instance.image,
  'weight': instance.weight,
};
