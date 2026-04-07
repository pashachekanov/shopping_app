import 'package:injectable/injectable.dart';
import 'package:shopping_app/api_manager/api_client.dart';
import 'package:shopping_app/api_manager/api_service.dart';
import 'package:shopping_app/entities/products.dart';
import 'package:shopping_app/entities/token_data.dart';
import 'package:shopping_app/entities/token_request.dart';
import 'package:shopping_app/injection/injection.dart';

@Injectable(as: ApiService)
class ApiServiceImpl implements ApiService {
  @override
  Future<TokenData> getToken(String email, String password) async {
    final tokenRequest = TokenRequest(
      email: email,
      password: password,
    );
    final tokenResponse = await getIt<ApiClient>().login(
      body: tokenRequest.toJson(),
    );
    return tokenResponse;
  }

  @override
  Future<List<Products>> getProducts() async {
    final products = await getIt<ApiClient>().getProducts();
    return products;
  }

  @override
  Future<List<Products>> getProductsByChunks({
    required int offset,
    required int pageSize,
  }) async {
    final response = await getIt<ApiClient>().getProductsByChunks(
      offset: offset,
      pageSize: pageSize,
    );
    return response;
  }
}
