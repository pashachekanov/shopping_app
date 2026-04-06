import 'package:shopping_app/entities/token_data.dart';

abstract class ApiService {
  Future<TokenData> getToken(String email, String password);
}
