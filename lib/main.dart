import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/app_widget.dart';
import 'package:shopping_app/injection/injection.dart';

const env = String.fromEnvironment('ENV', defaultValue: Environment.prod);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(environment: env);
  runApp(const AppWidget());
}
