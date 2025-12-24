// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Support _$SupportFromJson(Map<String, dynamic> json) => _Support(
  id: (json['id'] as num).toInt(),
  subject: json['subject'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$SupportToJson(_Support instance) => <String, dynamic>{
  'id': instance.id,
  'subject': instance.subject,
  'message': instance.message,
};
