// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

//
// @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
// class User {
//   String fullName;
//   String email;
//   String? phone;
//   bool isActive;
//
//   User({
//     required this.fullName,
//     required this.email,
//     this.phone,
//     this.isActive = true,
//   });
//
//   Map<String, dynamic> toJson() => _$UserToJson(this);
//
//   factory User.fromJson(Map<String, dynamic> source) => _$UserFromJson(source);
// }
//
// @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
// class CreateUser extends User {
//   @override
//   String fullName;
//   @override
//   String email;
//   @override
//   String? phone;
//   @override
//   bool isActive;
//   String password;
//
//   CreateUser({
//     required this.fullName,
//     required this.email,
//     this.phone,
//     this.isActive = true,
//     required this.password,
//   }) : super(fullName: fullName, email: email, isActive: isActive);
//
//   Map<String, dynamic> toJson() => _$CreateUserToJson(this);
//
//   factory CreateUser.fromJson(Map<String, dynamic> source) =>
//       _$CreateUserFromJson(source);
// }
//
// @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
// class ReadUser extends User {
//   int id;
//   @override
//   String fullName;
//   @override
//   String email;
//   @override
//   String? phone;
//   @override
//   bool isActive;
//
//   ReadUser({
//     required this.id,
//     required this.fullName,
//     required this.email,
//     this.phone,
//     this.isActive = true,
//   }) : super(fullName: fullName, email: email, isActive: isActive);
//
//   Map<String, dynamic> toJson() => _$ReadUserToJson(this);
//
//   factory ReadUser.fromJson(Map<String, dynamic> source) =>
//       _$ReadUserFromJson(source);
// }

@JsonSerializable(explicitToJson: true)
class CreateUserDto {
  String email;
  String username;
  String? fullName;
  String? phone;
  String password;

  CreateUserDto({
    required this.email,
    required this.username,
    this.fullName,
    this.phone,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$CreateUserDtoToJson(this);

  factory CreateUserDto.fromJson(Map<String, dynamic> source) =>
      _$CreateUserDtoFromJson(source);
}

@JsonSerializable(explicitToJson: true)
class UpdateUserDto {
  String? fullName;
  String? phone;
  String? email;

  UpdateUserDto({
    this.fullName,
    this.phone,
    this.email,
  });

  Map<String, dynamic> toJson() => _$UpdateUserDtoToJson(this);

  factory UpdateUserDto.fromJson(Map<String, dynamic> source) =>
      _$UpdateUserDtoFromJson(source);
}
