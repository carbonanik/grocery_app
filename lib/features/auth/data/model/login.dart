import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.g.dart';
part 'login.freezed.dart';

@freezed
abstract class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String identifier,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> source) =>
      _$LoginRequestFromJson(source);
}
