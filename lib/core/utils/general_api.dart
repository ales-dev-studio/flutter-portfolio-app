import 'dart:async';

import 'package:dio/dio.dart';
import 'package:dio/dio.dart' as dio_package;

import 'package:personal_portfolio/core/utils/dio_singleton.dart';

Future generalApiHandler({
  required final String method,
  required final String url,
  final data,
  final Map<String, dynamic>? queryParam,
  final Map<String, dynamic>? header,
  final bool isLogin = false,
  final bool handleNetworkError = false,
}) async {
  Dio? dio;
  dio = DioSingleton.getInstance(isLogin);
  dio!.options.method = method.toLowerCase();
  if (header != null) {
    dio.options.headers = header;
  }

  // if(kDebugMode){
  // print(dio.options.baseUrl + url) ;
  // print(dio.options.headers);
  // }

  final dio_package.Response response = await dio.request(
    url,
    data: data,
    queryParameters: queryParam,
  );

  // if(kDebugMode){
  // print(dio.options.baseUrl + url) ;
  // print(dio.options.headers);
  // log(response.data.toString());
  // }

  return response;
}
