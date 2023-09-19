// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateSupportDto _$$_CreateSupportDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateSupportDto(
      subject: json['subject'] as String,
      message: json['message'] as String,
      user: UserInSupportDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateSupportDtoToJson(_$_CreateSupportDto instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'message': instance.message,
      'user': instance.user,
    };

_$_UserInSupportDto _$$_UserInSupportDtoFromJson(Map<String, dynamic> json) =>
    _$_UserInSupportDto(
      connect: (json['connect'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_UserInSupportDtoToJson(_$_UserInSupportDto instance) =>
    <String, dynamic>{
      'connect': instance.connect,
    };

_$_ReadSupportDto _$$_ReadSupportDtoFromJson(Map<String, dynamic> json) =>
    _$_ReadSupportDto(
      id: json['id'] as int,
      attributes: ReadSupportAttributeDto.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReadSupportDtoToJson(_$_ReadSupportDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };

_$_ReadSupportAttributeDto _$$_ReadSupportAttributeDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ReadSupportAttributeDto(
      subject: json['subject'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ReadSupportAttributeDtoToJson(
        _$_ReadSupportAttributeDto instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'message': instance.message,
    };
