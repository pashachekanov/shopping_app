import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/injection/injection.dart';
import 'package:shopping_app/service/constants.dart';
import 'package:shopping_app/service/interceptors/interceptor_auth_token.dart';

@module
abstract class ApiModule {
  @Named('BaseUrl')
  @prod
  @lazySingleton
  String get baseUrl => Constants.baseUrl;

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) {
    final dio = Dio(BaseOptions(baseUrl: url));
    final authTokenInterceptor = getIt<InterceptorAuthToken>(param1: dio);
    dio.interceptors.add(authTokenInterceptor);
    return dio;
  }
}
