import 'package:shopping_app/domain_models/products.dart' as domain;
import 'package:shopping_app/entities/token_data.dart';

abstract class LocalDataSource {
  Future<TokenData> getToken();
  Future<void> cacheToken(TokenData token);
  Future<void> clearSession();
  Future<void> cacheProducts(List<domain.Products> products);
  List<domain.Products> getProducts();
}
