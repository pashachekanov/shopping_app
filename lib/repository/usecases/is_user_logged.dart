import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/repository/repository.dart';
import 'package:shopping_app/repository/usecases/no_params.dart';
import 'package:shopping_app/repository/usecases/usecase.dart';

@injectable
class IsUserLoggedUsecase extends Usecase<bool, NoParams> {
  IsUserLoggedUsecase(this.repository);

  final Repository repository;

  @override
  Future<Either<Failure, bool>> call(NoParams parameter) =>
      repository.isUserLogged();
}
