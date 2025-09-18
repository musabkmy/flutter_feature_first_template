import 'package:dio/dio.dart';

abstract class ApiBaseClient {
  /// 🏁 Creates and configures a Dio instance with default options and interceptors
  Dio starter();

  /// 🛡️ Sets up proxy settings for QA environments
  // void setupProxySettings(Dio dio);

  /// 📂 Prepares any necessary resources (cookies, certificates, etc.)
  // Future<void> prepareResources();

  /// 🗑️ Disposes any resources
  // void dispose();
}
