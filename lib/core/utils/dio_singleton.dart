import 'package:dio/dio.dart';
import 'package:personal_portfolio/core/routes/apis_routes.dart';

class DioSingleton {
  DioSingleton._internal();

  static Dio? _dio;

  static Dio? getInstance(final bool isLogin) {
    if (_dio == null || isLogin) {
      _dio = Dio(
        BaseOptions(
          baseUrl: Routes.BASE_URL,
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 20),
        ),
      );
    }

    return _dio;
  }
}
