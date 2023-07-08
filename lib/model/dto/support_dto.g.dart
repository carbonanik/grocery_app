// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSupportDto _$CreateSupportDtoFromJson(Map<String, dynamic> json) =>
    CreateSupportDto(
      subject: json['subject'] as String,
      message: json['message'] as String,
      user: UserInSupportDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateSupportDtoToJson(CreateSupportDto instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'message': instance.message,
      'user': instance.user.toJson(),
    };

UserInSupportDto _$UserInSupportDtoFromJson(Map<String, dynamic> json) =>
    UserInSupportDto(
      connect: (json['connect'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$UserInSupportDtoToJson(UserInSupportDto instance) =>
    <String, dynamic>{
      'connect': instance.connect,
    };

ReadSupportDto _$ReadSupportDtoFromJson(Map<String, dynamic> json) =>
    ReadSupportDto(
      id: json['id'] as int,
      attributes: ReadSupportAttributeDto.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReadSupportDtoToJson(ReadSupportDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.toJson(),
    };

ReadSupportAttributeDto _$ReadSupportAttributeDtoFromJson(
        Map<String, dynamic> json) =>
    ReadSupportAttributeDto(
      subject: json['subject'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$ReadSupportAttributeDtoToJson(
        ReadSupportAttributeDto instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'message': instance.message,
    };
