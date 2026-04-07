import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/api_manager/api_service.dart';
import 'package:shopping_app/entities/products.dart';
import 'package:shopping_app/entities/token_data.dart';
import 'package:shopping_app/remote_datasource/remote_datasource.dart';

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

  @override
  Future<List<Products>> getProducts() async {
    try {
      final products = await apiService.getProducts();
      return products;
    } catch (e) {
      if (e is DioException) {
        throw e.error as Exception;
      } else {
        throw e as Exception;
      }
    }
  }

  @override
  Future<List<Products>> getProductsByChunks({
    required int offset,
    required int pageSize,
  }) => apiService.getProductsByChunks(offset: offset, pageSize: pageSize);
}
