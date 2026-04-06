import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shopping_app/entities/token_data.dart';
import 'package:shopping_app/entities/token_request.dart';

part 'api_client.g.dart';

@injectable
@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio, {@Named('BaseUrl') String baseUrl}) = _ApiClient;

  @POST('/auth/login')
  @FormUrlEncoded()
  Future<TokenData> login({@Body() required TokenRequest body});
}
