import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/injection/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
void configureDependencies({String? environment}) =>
    getIt.init(environment: environment);
