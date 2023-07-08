import 'package:json_annotation/json_annotation.dart';

import '../support.dart';

part 'support_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class CreateSupportDto {
  final String subject;
  final String message;
  final UserInSupportDto user;

  CreateSupportDto({
    required this.subject,
    required this.message,
    required this.user,
  });

  Map<String, dynamic> toJson() => _$CreateSupportDtoToJson(this);

  factory CreateSupportDto.fromJson(Map<String, dynamic> source) =>
      _$CreateSupportDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class UserInSupportDto {
  final List<int> connect;

  UserInSupportDto({
    required this.connect,
  });

  Map<String, dynamic> toJson() => _$UserInSupportDtoToJson(this);

  factory UserInSupportDto.fromJson(Map<String, dynamic> source) =>
      _$UserInSupportDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class ReadSupportDto {
  final int id;
  final ReadSupportAttributeDto attributes;

  ReadSupportDto({
    required this.id,
    required this.attributes,
  });

  Map<String, dynamic> toJson() => _$ReadSupportDtoToJson(this);

  factory ReadSupportDto.fromJson(Map<String, dynamic> source) =>
      _$ReadSupportDtoFromJson(source);

  Support getSupport() {
    return Support(
      id: id,
      message: attributes.message,
      subject: attributes.subject,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ReadSupportAttributeDto{
  final String subject;
  final String message;

  ReadSupportAttributeDto({
    required this.subject,
    required this.message,
  });

  Map<String, dynamic> toJson() => _$ReadSupportAttributeDtoToJson(this);

  factory ReadSupportAttributeDto.fromJson(Map<String, dynamic> source) =>
      _$ReadSupportAttributeDtoFromJson(source);
}
