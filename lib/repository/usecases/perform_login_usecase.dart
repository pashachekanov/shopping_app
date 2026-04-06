import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/repository/repository.dart';
import 'package:shopping_app/repository/usecases/usecase.dart';

@injectable
class PerformLoginUsecase extends Usecase<void, GetTokenParams> {
  PerformLoginUsecase(this.repository);

  final Repository repository;

  @override
  Future<Either<Failure, void>> call(GetTokenParams parameter) => repository
      .getAccessToken(parameter)
      .timeout(
        const Duration(seconds: 5),
        onTimeout: () => Left(TimeoutFailure()),
      );
}

class GetTokenParams {
  GetTokenParams({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;
}
