import 'package:dio/dio.dart';
import '../../../core/network/api_endpoints.dart';
import '../../../core/network/dio_interceptors.dart';
import 'abstract/app_base_client.dart';

class AppDioClient implements ApiBaseClient {
  @override
  Dio starter() {
    final options = BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      responseType: ResponseType.json,
      headers: {'Content-Type': 'application/json'},
    );
    final dio = Dio()
      ..options = options
      ..options.responseType = ResponseType.json
      ..interceptors.add(AppLogInterceptor());
    dio.interceptors.add(AuthInterceptor(dio));
    return dio;
  }
}
