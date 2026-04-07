import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/repository/repository.dart';
import 'package:shopping_app/repository/usecases/no_params.dart';
import 'package:shopping_app/repository/usecases/usecase.dart';

@injectable
class LogoutUsecase extends Usecase<bool, NoParams> {
  LogoutUsecase(this.repository);

  final Repository repository;

  @override
  Future<Either<Failure, bool>> call(NoParams parameter) =>
      repository.performLogout().timeout(
        const Duration(seconds: 15),
        onTimeout: () => Left(TimeoutFailure()),
      );
}
