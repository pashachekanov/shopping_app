import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/localization/shopping_app_localization.dart';
import 'package:shopping_app/routes/router.dart';
import 'package:shopping_app/style/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    final _theme = lightThemeData();
    return MaterialApp.router(
      localizationsDelegates: const [
        ShoppingAppLocalization.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: ShoppingAppLocalization.supportedLocales,
      routerConfig: _appRouter.config(),
      theme: _theme,
    );
  }
}
