import 'package:injectable/injectable.dart';
import 'package:shopping_app/entities/token_data.dart';
import 'package:shopping_app/entities/token_request.dart';
import 'package:shopping_app/injection/injection.dart';
import 'package:shopping_app/service/api_client.dart';
import 'package:shopping_app/service/api_service.dart';

@Injectable(as: ApiService)
class ApiServiceImpl implements ApiService {
  @override
  Future<TokenData> getToken(String email, String password) async {
    final tokenRequest = TokenRequest(
      email: email,
      password: password,
    );
    final tokenResponse = await getIt<ApiClient>().login(body: tokenRequest);
    return tokenResponse;
  }
}
