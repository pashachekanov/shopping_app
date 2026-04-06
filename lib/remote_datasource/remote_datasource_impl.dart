import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/entities/token_data.dart';
import 'package:shopping_app/remote_datasource/remote_datasource.dart';
import 'package:shopping_app/service/api_service.dart';

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl extends RemoteDataSource {
  RemoteDataSourceImpl({required this.apiService});

  final ApiService apiService;

  @override
  Future<TokenData> getToken({
    required String email,
    required String password,
  }) async {
    try {
      final token = await apiService.getToken(email, password);
      return token;
    } catch (e) {
      if (e is DioException) {
        throw e.error as Exception;
      } else {
        throw e as Exception;
      }
    }
  }
}
