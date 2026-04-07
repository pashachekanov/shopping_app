// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../api_manager/api_client.dart' as _i878;
import '../api_manager/api_module.dart' as _i971;
import '../api_manager/api_service.dart' as _i1065;
import '../api_manager/api_service_impl.dart' as _i460;
import '../api_manager/interceptors/interceptor_auth_token.dart' as _i393;
import '../feature/home/cubit/home_cubit.dart' as _i459;
import '../feature/home/service/home_service.dart' as _i114;
import '../feature/login/cubit/login_cubit.dart' as _i442;
import '../feature/login/service/login_service.dart' as _i518;
import '../local_datasource/local_datasource.dart' as _i255;
import '../local_datasource/local_datasource_impl.dart' as _i364;
import '../local_datasource/shared_preferences_service.dart' as _i935;
import '../local_datasource/shared_preferences_service_impl.dart' as _i587;
import '../local_datasource/shared_prefs_provider.dart' as _i983;
import '../remote_datasource/remote_datasource.dart' as _i597;
import '../remote_datasource/remote_datasource_impl.dart' as _i450;
import '../repository/repository.dart' as _i1035;
import '../repository/repository_impl.dart' as _i663;
import '../repository/usecases/get_products_by_chunks_usecase.dart' as _i739;
import '../repository/usecases/get_products_usecase.dart' as _i566;
import '../repository/usecases/is_user_logged.dart' as _i612;
import '../repository/usecases/logout_usecase.dart' as _i284;
import '../repository/usecases/perform_login_usecase.dart' as _i583;
import '../routes/router.dart' as _i393;
import '../routes/routes_module.dart' as _i1058;

const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final sharedPrefsModule = _$SharedPrefsModule();
    final routesModule = _$RoutesModule();
    final apiModule = _$ApiModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPrefsModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i393.AppRouter>(() => routesModule.appRouter);
    gh.factory<_i935.SharedPreferencesService>(
      () => _i587.SharedPreferencesServiceImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i1065.ApiService>(() => _i460.ApiServiceImpl());
    gh.factory<_i255.LocalDataSource>(
      () => _i364.LocalDataSourceImpl(gh<_i935.SharedPreferencesService>()),
    );
    gh.lazySingleton<String>(
      () => apiModule.baseUrl,
      instanceName: 'BaseUrl',
      registerFor: {_prod},
    );
    gh.lazySingleton<_i361.Dio>(
      () => apiModule.dio(gh<String>(instanceName: 'BaseUrl')),
    );
    gh.factory<_i597.RemoteDataSource>(
      () => _i450.RemoteDataSourceImpl(apiService: gh<_i1065.ApiService>()),
    );
    gh.factory<_i878.ApiClient>(
      () => _i878.ApiClient(
        gh<_i361.Dio>(),
        baseUrl: gh<String>(instanceName: 'BaseUrl'),
      ),
    );
    gh.factory<_i1035.Repository>(
      () => _i663.RepositoryImpl(
        remoteDataSource: gh<_i597.RemoteDataSource>(),
        localDataSource: gh<_i255.LocalDataSource>(),
      ),
    );
    gh.factoryParam<_i393.InterceptorAuthToken, _i361.Dio?, dynamic>(
      (dio, _) => _i393.InterceptorAuthToken(dio, gh<_i255.LocalDataSource>()),
    );
    gh.factory<_i739.GetNotificationsUsecase>(
      () => _i739.GetNotificationsUsecase(gh<_i1035.Repository>()),
    );
    gh.factory<_i566.GetProductsUsecase>(
      () => _i566.GetProductsUsecase(gh<_i1035.Repository>()),
    );
    gh.factory<_i612.IsUserLoggedUsecase>(
      () => _i612.IsUserLoggedUsecase(gh<_i1035.Repository>()),
    );
    gh.factory<_i284.LogoutUsecase>(
      () => _i284.LogoutUsecase(gh<_i1035.Repository>()),
    );
    gh.factory<_i583.PerformLoginUsecase>(
      () => _i583.PerformLoginUsecase(gh<_i1035.Repository>()),
    );
    gh.lazySingleton<_i114.HomeService>(
      () => _i114.HomeService(
        gh<_i566.GetProductsUsecase>(),
        gh<_i284.LogoutUsecase>(),
      ),
    );
    gh.lazySingleton<_i518.LoginService>(
      () => _i518.LoginService(
        gh<_i583.PerformLoginUsecase>(),
        gh<_i612.IsUserLoggedUsecase>(),
      ),
    );
    gh.factory<_i459.HomeCubit>(() => _i459.HomeCubit(gh<_i114.HomeService>()));
    gh.factory<_i442.LoginCubit>(
      () => _i442.LoginCubit(gh<_i518.LoginService>(), gh<_i393.AppRouter>()),
    );
    return this;
  }
}

class _$SharedPrefsModule extends _i983.SharedPrefsModule {}

class _$RoutesModule extends _i1058.RoutesModule {}

class _$ApiModule extends _i971.ApiModule {}
