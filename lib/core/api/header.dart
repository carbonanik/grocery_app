import 'package:instant_grrocery_delivery/features/auth/data/model/response/auth_response.dart';

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

