import 'package:shopping_app/entities/token_data.dart';

abstract class RemoteDataSource {
  Future<TokenData> getToken({required String email, required String password});
}
