import 'package:injectable/injectable.dart';
import 'package:shopping_app/routes/router.dart';

@module
abstract class RoutesModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
