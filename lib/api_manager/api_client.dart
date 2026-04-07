import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shopping_app/entities/products.dart';
import 'package:shopping_app/entities/token_data.dart';

part 'api_client.g.dart';

@injectable
@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio, {@Named('BaseUrl') String baseUrl}) = _ApiClient;

  @POST('/auth/login')
  @FormUrlEncoded()
  Future<TokenData> login({@Body() required Map<String, dynamic> body});

  @GET('/products')
  Future<List<Products>> getProducts();

  @GET('/products?offset={offset}&limit={pageSize}')
  Future<List<Products>> getProductsByChunks({
    @Path('offset') required int offset,
    @Path('pageSize') required int pageSize,
  });
}
