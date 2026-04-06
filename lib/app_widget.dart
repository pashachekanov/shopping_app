import 'package:flutter/material.dart';
import 'package:shopping_app/routes/router.dart';
import 'package:shopping_app/style/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    final _theme = lightThemeData();
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: _theme,
    );
  }
}
