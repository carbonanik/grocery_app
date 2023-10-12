// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateSupportDtoImpl _$$CreateSupportDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSupportDtoImpl(
      subject: json['subject'] as String,
      message: json['message'] as String,
      user: UserInSupportDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateSupportDtoImplToJson(
        _$CreateSupportDtoImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'message': instance.message,
      'user': instance.user,
    };

_$UserInSupportDtoImpl _$$UserInSupportDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInSupportDtoImpl(
      connect: (json['connect'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$UserInSupportDtoImplToJson(
        _$UserInSupportDtoImpl instance) =>
    <String, dynamic>{
      'connect': instance.connect,
    };

_$ReadSupportDtoImpl _$$ReadSupportDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReadSupportDtoImpl(
      id: json['id'] as int,
      attributes: ReadSupportAttributeDto.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReadSupportDtoImplToJson(
        _$ReadSupportDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$ReadSupportAttributeDtoImpl _$$ReadSupportAttributeDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReadSupportAttributeDtoImpl(
      subject: json['subject'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ReadSupportAttributeDtoImplToJson(
        _$ReadSupportAttributeDtoImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'message': instance.message,
    };
