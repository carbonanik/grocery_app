import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

part 'login.g.dart';
part 'login.freezed.dart';

@freezed
class LoginRequestDto with _$LoginRequestDto {

  const factory LoginRequestDto({
    required String identifier,
    required String password,
  }) = _LoginRequestDto;

  factory LoginRequestDto.fromJson(Map<String, dynamic> source) =>
      _$LoginRequestDtoFromJson(source);
}

@freezed
class AuthResponseDto with _$AuthResponseDto {

  const factory AuthResponseDto({
    required String jwt,
    required UserDto user,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> source) =>
      _$AuthResponseDtoFromJson(source);

}

extension AuthToken on AuthResponseDto {
  String authorizationToken() {
    return 'Bearer $jwt';
  }
}

