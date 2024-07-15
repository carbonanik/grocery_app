import 'package:flutter/foundation.dart';

@immutable
class Paths {
  static const String baseUrl = '143.244.169.231:8002';
  static const String baseLocal = 'localhost:1337';
  static const String category = 'categories';
  static const String order = 'orders';
  static const String product = 'products';
  static const String register = 'auth/local/register';
  static const String login = 'auth/local';
  static const String updateUser = 'users';
  static const String support = 'supports';
}

Uri getUri({
  required String path,
  String v = 'api/',
  String baseUrl = Paths.baseLocal,
  Map<String, dynamic>? parameters,
}) {
  final uri = Uri.http(baseUrl, v + path);
  final newQueryParameter = {...uri.queryParameters, ...?parameters};
  return uri.replace(queryParameters: newQueryParameter);
}
