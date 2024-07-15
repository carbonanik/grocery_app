// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportImpl _$$SupportImplFromJson(Map<String, dynamic> json) =>
    _$SupportImpl(
      id: (json['id'] as num).toInt(),
      subject: json['subject'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$SupportImplToJson(_$SupportImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'message': instance.message,
    };
