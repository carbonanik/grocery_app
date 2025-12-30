Map<String, String> getHeader({String? token}) {
  Map<String, String> headers = {"Content-Type": "application/json"};
  if (token != null) {
    headers['Authorization'] = 'Bearer $token';
  }
  return headers;
}
