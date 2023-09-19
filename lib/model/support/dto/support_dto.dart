import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instant_grrocery_delivery/model/support/support.dart';

part 'support_dto.g.dart';
part 'support_dto.freezed.dart';

@freezed
class CreateSupportDto with _$CreateSupportDto {

  const factory CreateSupportDto({
    required String subject,
    required String message,
    required UserInSupportDto user,
  }) = _CreateSupportDto;

  factory CreateSupportDto.fromJson(Map<String, dynamic> source) =>
      _$CreateSupportDtoFromJson(source);
}

@freezed
class UserInSupportDto with _$UserInSupportDto {

  const factory UserInSupportDto({
    required List<int> connect,
  }) = _UserInSupportDto;

  factory UserInSupportDto.fromJson(Map<String, dynamic> source) =>
      _$UserInSupportDtoFromJson(source);
}

@freezed
class ReadSupportDto with _$ReadSupportDto {

  const factory ReadSupportDto({
    required int id,
    required ReadSupportAttributeDto attributes,
  }) = _ReadSupportDto;


  factory ReadSupportDto.fromJson(Map<String, dynamic> source) =>
      _$ReadSupportDtoFromJson(source);

}

extension ReadSupportDtoX on ReadSupportDto {
  Support toSupport() => Support(
        id: id,
        message: attributes.message,
        subject: attributes.subject,
      );
}

@freezed
class ReadSupportAttributeDto with _$ReadSupportAttributeDto {

  const factory ReadSupportAttributeDto({
    required String subject,
    required String message,
  }) = _ReadSupportAttributeDto;

  factory ReadSupportAttributeDto.fromJson(Map<String, dynamic> source) =>
      _$ReadSupportAttributeDtoFromJson(source);
}
