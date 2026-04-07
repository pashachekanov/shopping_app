import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/entities/exceptions.dart';
import 'package:shopping_app/entities/token_data.dart';
import 'package:shopping_app/local_datasource/local_datasource.dart';

@injectable
class InterceptorAuthToken extends QueuedInterceptor {
  InterceptorAuthToken(
    @factoryParam this.dio,
    this.localDataSource,
  );

  final Dio? dio;
  final LocalDataSource localDataSource;

  String urlEncodedHeader = 'application/x-www-form-urlencoded';

  @override
  Future<dynamic> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    TokenData token;
    if (!options.headers.containsValue(urlEncodedHeader)) {
      try {
        token = await localDataSource.getToken();
        options.headers['Authorization'] = 'Bearer ${token.accessToken}';
      } on Exception {
        print('No local token stored');
        await localDataSource.clearSession();
        return handler.reject(
          DioException(requestOptions: options),
          true,
        );
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
    );
    final dynamic responseData = err.response?.data;
    final statusCode = err.response?.statusCode ?? 0;
    if ((statusCode == 401 || statusCode == 405) &&
        !err.requestOptions.path.contains('/auth/login')) {
      return handler.reject(
        DioException(
          error: ServerException(
            message: 'Access denied',
            statusCode: statusCode,
          ),
          requestOptions: err.requestOptions,
        ),
      );
    }
    if (responseData != null) {
      print('ERROR message: $responseData');
      final errorMessage =
          responseData['error_description']?.toString() ?? 'Unknown message';
      return handler.reject(
        DioException(
          error: ServerException(
            message: errorMessage,
            statusCode: statusCode,
          ),
          requestOptions: err.requestOptions,
        ),
      );
    }
  }
}
