import 'package:flutter/foundation.dart';

@immutable
class ApiPath {
  static const String baseUrl = '143.244.169.231:8002';
  static const String baseLocal = 'localhost:1337';
  static String category = 'categories';
  static String order = 'orders';
  static String product = 'products';
  static String register = 'auth/local/register';
  static String login = 'auth/local';
  static String updateUser = 'users';
  static String support = 'supports';
}

Uri getUri({
  required String path,
  String v = 'api/',
  String baseUrl = ApiPath.baseLocal,
  Map<String, dynamic>? parameters,
}) {
  final uri = Uri.http(baseUrl, v + path);
  final newQueryParameter = {...uri.queryParameters, ...?parameters};
  return uri.replace(queryParameters: newQueryParameter);
}
