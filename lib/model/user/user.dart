import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.g.dart';
part 'user.freezed.dart';


@freezed
class CreateUserDto with _$CreateUserDto {

  const factory CreateUserDto({
    required String email,
    required String username,
    String? fullName,
    String? phone,
    required String password,
  }) = _CreateUserDto;

  factory CreateUserDto.fromJson(Map<String, dynamic> source) =>
      _$CreateUserDtoFromJson(source);
}

@freezed
class UpdateUserDto with _$UpdateUserDto {

  const factory UpdateUserDto({
    String? fullName,
    String? phone,
    String? email,
  }) = _UpdateUserDto;

  factory UpdateUserDto.fromJson(Map<String, dynamic> source) =>
      _$UpdateUserDtoFromJson(source);
}

@freezed
class UserDto with _$UserDto {

  const factory UserDto({
    required int id,
    required String username,
    required String email,
    required String provider,
    required bool confirmed,
    required bool blocked,
    required String fullName,
    required String phone,
    required bool isActive,
  }) = _UserDto;


  factory UserDto.fromJson(Map<String, dynamic> source) =>
      _$UserDtoFromJson(source);
}
