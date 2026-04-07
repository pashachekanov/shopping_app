import 'dart:async';
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/products.dart' as domain;
import 'package:shopping_app/entities/exceptions.dart';
import 'package:shopping_app/entities/token_data.dart';
import 'package:shopping_app/local_datasource/local_datasource.dart';
import 'package:shopping_app/local_datasource/shared_preferences_service.dart';

const KEY_TOKEN = 'KEY_TOKEN';
const KEY_PRODUCTS = 'KEY_PRODUCTS';

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl extends LocalDataSource {
  LocalDataSourceImpl(
    this.sharedPreferencesService,
  );

  final SharedPreferencesService sharedPreferencesService;

  @override
  Future<void> cacheToken(TokenData token) {
    sharedPreferencesService.setString(KEY_TOKEN, json.encode(token));
    return Future.value();
  }

  @override
  Future<TokenData> getToken() {
    final storedRaw = sharedPreferencesService.getString(KEY_TOKEN);

    if (storedRaw != null) {
      final decoded = json.decode(storedRaw) as Map<String, dynamic>;
      return Future.value(TokenData.fromJson(decoded));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> clearSession() async {
    unawaited(sharedPreferencesService.clear());
    return Future.value();
  }

  @override
  Future<void> cacheProducts(List<domain.Products> products) {
    sharedPreferencesService.setString(KEY_PRODUCTS, json.encode(products));
    return Future.value();
  }

  @override
  List<domain.Products> getProducts() {
    final storedRaw = sharedPreferencesService.getString(KEY_PRODUCTS);

    if (storedRaw != null) {
      final decoded = json.decode(storedRaw) as List<dynamic>;
      return decoded
          .map((item) => domain.Products.fromJson(item as Map<String, dynamic>))
          .toList();
    } else {
      throw CacheException();
    }
  }
}
