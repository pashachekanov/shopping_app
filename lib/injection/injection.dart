import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/injection/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
Future<void> configureDependencies({String? environment}) async =>
    getIt.init(environment: environment);
