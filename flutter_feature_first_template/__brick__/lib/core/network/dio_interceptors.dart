import 'package:dio/dio.dart';
import 'package:flutter/rendering.dart';

/// Logging Interceptor
class AppLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('➡️ [REQUEST] ${options.method} ${options.uri}');
    debugPrint('Headers: ${options.headers}');
    debugPrint('Data: ${options.data}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint(
      '✅ [RESPONSE] ${response.statusCode} ${response.requestOptions.uri}',
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint('❌ [ERROR] ${err.type} ${err.message}');
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
