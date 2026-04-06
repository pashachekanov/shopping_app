import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/entities/exceptions.dart';
import 'package:shopping_app/local_datasource/local_datasource.dart';
import 'package:shopping_app/remote_datasource/remote_datasource.dart';
import 'package:shopping_app/repository/repository.dart';
import 'package:shopping_app/repository/usecases/perform_login_usecase.dart';

@Injectable(as: Repository)
class RepositoryImpl extends Repository {
  RepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  @override
  Future<Either<Failure, void>> getAccessToken(GetTokenParams params) async {
    try {
      await localDataSource.getToken();
      return const Right(Unit);
    } on CacheException {
      return _loadRemoteToken(params: params);
    }
  }

  Future<Either<Failure, void>> _loadRemoteToken({
    required GetTokenParams params,
  }) async {
    try {
      final response = await remoteDataSource.getToken(
        email: params.email,
        password: params.password,
      );
      await localDataSource.cacheToken(response);
      return const Right(Unit);
    } catch (error) {
      if (error is ServerException) {
        return Left(ServerFailure(serverResponse: error.message));
      } else {
        return Left(UnknownFailure());
      }
    }
  }
}
