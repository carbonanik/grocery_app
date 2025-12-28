import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/core/api/local_constants.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
abstract class CreateUserRequest with _$CreateUserRequest {
  const factory CreateUserRequest({
    required String email,
    required String username,
    String? fullName,
    String? phone,
    required String password,
  }) = _CreateUserRequest;

  factory CreateUserRequest.fromJson(Map<String, dynamic> source) =>
      _$CreateUserRequestFromJson(source);
}

@freezed
abstract class UpdateUserRequest with _$UpdateUserRequest {
  const factory UpdateUserRequest({
    String? fullName,
    String? phone,
    String? email,
  }) = _UpdateUserRequest;

  factory UpdateUserRequest.fromJson(Map<String, dynamic> source) =>
      _$UpdateUserRequestFromJson(source);
}

@freezed
abstract class User extends HiveObject with _$User {
  User._();

  @HiveType(typeId: userHiveTypeId, adapterName: userAdapterName)
  factory User({
    @HiveField(0) required int id,
    @HiveField(1) required String username,
    @HiveField(2) required String email,
    @HiveField(3) String? provider,
    @HiveField(4) bool? confirmed,
    @HiveField(5) bool? blocked,
    @HiveField(6) String? fullName,
    @HiveField(7) String? phone,
    @HiveField(8) bool? isActive,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> source) => _$UserFromJson(source);
}

