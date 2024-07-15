import 'package:dio/dio.dart';
import 'api_client.dart';
import 'method_types.dart';

// mixing
class DioClient implements ApiClient {
  late Dio _client;

  DioClient({required String baseUrl}) {
    _client = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(LogInterceptor(
        responseBody: true,
        requestBody: true,
      ));
  }

  @override
  Future<T> request<T>({
    required String path,
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParams,
    Map<String, String>? headers,
    T Function(Map<String, dynamic> json)? parse,
    T Function(DioException e)? errorHandler,
    bool? showLoader,
  }) async {
    Response? response;

    switch (method) {
      case MethodType.get:
        response = await _client.get(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.post:
        response = await _client.post(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.put:
        response = await _client.put(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.delete:
        response = await _client.delete(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
      case MethodType.patch:
        response = await _client.patch(
          path,
          data: payload,
          queryParameters: queryParams,
          options: Options(
            headers: headers,
          ),
        );
        break;
    }
    return (parse != null) ? parse.call(response.data) : response.data;
  }

  @override
  void setToken(String token) {
    _client.options.headers['Authorization'] = 'Bearer $token';
  }

  @override
  void removeToken() {
    _client.options.headers.remove('Authorization');
  }
}
