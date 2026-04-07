import 'package:shopping_app/entities/products.dart';
import 'package:shopping_app/entities/token_data.dart';

abstract class ApiService {
  Future<TokenData> getToken(String email, String password);
  Future<List<Products>> getProducts();
  Future<List<Products>> getProductsByChunks({
    required int offset,
    required int pageSize,
  });
}
