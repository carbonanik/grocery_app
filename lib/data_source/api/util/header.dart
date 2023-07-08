import 'package:instant_grrocery_delivery/model/auth/login.dart';

Map<String, String> getHeader({AuthResponseDto? token}) {
  Map<String, String> headers = {
    "Content-Type": "application/json",
    // 'Accept': '*/*',
  };
  if (token != null) {
    headers['Authorization'] = token.authorizationToken();
  }
  return headers;
}
