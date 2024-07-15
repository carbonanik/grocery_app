import 'method_types.dart';

abstract class ApiClient {
  Future<T?> request<T>({
    required String path,
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, String>? queryParams,
    Map<String, String>? headers,
    T Function(Map<String, dynamic>)? parse,
    bool? showLoader,
  });

  void setToken(String token);

  void removeToken();
}
