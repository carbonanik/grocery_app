// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSupportDto _$CreateSupportDtoFromJson(Map<String, dynamic> json) =>
    _CreateSupportDto(
      subject: json['subject'] as String,
      message: json['message'] as String,
      user: UserInSupportDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateSupportDtoToJson(_CreateSupportDto instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'message': instance.message,
      'user': instance.user,
    };

_UserInSupportDto _$UserInSupportDtoFromJson(Map<String, dynamic> json) =>
    _UserInSupportDto(
      connect: (json['connect'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$UserInSupportDtoToJson(_UserInSupportDto instance) =>
    <String, dynamic>{'connect': instance.connect};

_ReadSupportDto _$ReadSupportDtoFromJson(Map<String, dynamic> json) =>
    _ReadSupportDto(
      id: (json['id'] as num).toInt(),
      attributes: ReadSupportAttributeDto.fromJson(
        json['attributes'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ReadSupportDtoToJson(_ReadSupportDto instance) =>
    <String, dynamic>{'id': instance.id, 'attributes': instance.attributes};

_ReadSupportAttributeDto _$ReadSupportAttributeDtoFromJson(
  Map<String, dynamic> json,
) => _ReadSupportAttributeDto(
  subject: json['subject'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$ReadSupportAttributeDtoToJson(
  _ReadSupportAttributeDto instance,
) => <String, dynamic>{
  'subject': instance.subject,
  'message': instance.message,
};
