// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Support _$SupportFromJson(Map<String, dynamic> json) => Support(
      id: json['id'] as int,
      subject: json['subject'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$SupportToJson(Support instance) => <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'message': instance.message,
    };
