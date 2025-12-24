import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:instant_grrocery_delivery/data_source/local/constant/constant.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

part 'auth_response.freezed.dart';

part 'auth_response.g.dart';

@freezed
class AuthResponse extends HiveObject with _$AuthResponse {
  AuthResponse._();

  @HiveType(typeId: authResponseHiveTypeId, adapterName: authResponseAdapterName)
  factory AuthResponse({
    @HiveField(0) required String jwt,
    @HiveField(1) required User user,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> source) => _$AuthResponseFromJson(source);
}

extension AuthToken on AuthResponse {
  String authorizationToken() {
    return 'Bearer $jwt';
  }
}

// @freezed
// abstract class AuthResult with _$AuthResult {
//   const factory AuthResult.initial() = _AuthResponseInitial;
//
//   const factory AuthResult.loading() = _AuthResponseLoading;
//
//   const factory AuthResult.data(AuthResponse value) = _AuthResponseData;
//
//   const factory AuthResult.error(Exception e) = _AuthResponseError;
// }
//
// extension AuthResultX on AuthResult {
//   get isData => this is _AuthResponseData;
//
//   get isLoading => this is _AuthResponseLoading;
// }
