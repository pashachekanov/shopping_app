import 'package:shopping_app/entities/token_data.dart';

abstract class LocalDataSource {
  Future<TokenData> getToken();
  Future<void> cacheToken(TokenData token);
  Future<void> clearSession();
}
