import 'package:dio/dio.dart';

/// Logging Interceptor
class AppLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('➡️ [REQUEST] ${options.method} ${options.uri}');
    print('Headers: ${options.headers}');
    print('Data: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('✅ [RESPONSE] ${response.statusCode} ${response.requestOptions.uri}');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('❌ [ERROR] ${err.type} ${err.message}');
    super.onError(err, handler);
  }
}

/// Auth Interceptor (auto-refresh token)
class AuthInterceptor extends Interceptor {
  final Dio dio;
  AuthInterceptor(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Example: refresh token logic
      try {
        final newToken = await _refreshToken();
        err.requestOptions.headers['Authorization'] = 'Bearer $newToken';

        final cloneReq = await dio.fetch(err.requestOptions);
        return handler.resolve(cloneReq);
      } catch (e) {
        // forward the error if refresh fails
        return handler.next(err);
      }
    }
    return handler.next(err);
  }

  Future<String> _refreshToken() async {
    // TODO: call your refresh token API
    await Future.delayed(const Duration(milliseconds: 500));
    return 'new_access_token';
  }
}
