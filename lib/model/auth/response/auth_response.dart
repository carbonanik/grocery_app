import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instant_grrocery_delivery/model/user/user.dart';

part 'auth_response.g.dart';
part 'auth_response.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse {

  const factory AuthResponse({
    required String jwt,
    required User user,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> source) =>
      _$AuthResponseFromJson(source);

}

extension AuthToken on AuthResponse {
  String authorizationToken() {
    return 'Bearer $jwt';
  }
}

@freezed
abstract class AuthResult with _$AuthResult {
  const factory AuthResult.initial() = _AuthResponseInitial;
  const factory AuthResult.loading() = _AuthResponseLoading;
  const factory AuthResult.data(AuthResponse value) = _AuthResponseData;
  const factory AuthResult.error(Exception e) = _AuthResponseError;
}

extension AuthResultX on AuthResult {
  get isData => this is _AuthResponseData;
  get isLoading => this is _AuthResponseLoading;
}

