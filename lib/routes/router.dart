import 'package:auto_route/auto_route.dart';
import 'package:shopping_app/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(page: LoginView.page),
  ];
}
