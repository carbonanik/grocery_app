import 'package:instant_grrocery_delivery/model/auth/login.dart';
import 'package:instant_grrocery_delivery/model/auth/response/auth_response.dart';

Map<String, String> getHeader({AuthResponse? token}) {
  Map<String, String> headers = {
    "Content-Type": "application/json",
    // 'Accept': '*/*',
  };
  if (token != null) {
    headers['Authorization'] = token.authorizationToken();
  }
  return headers;
}
