// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i6;
import 'package:shopping_app/feature/home/home_page.dart' as _i1;
import 'package:shopping_app/feature/login/cubit/login_cubit.dart' as _i5;
import 'package:shopping_app/feature/login/login_page.dart' as _i2;
import 'package:shopping_app/feature/login/login_view.dart' as _i3;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.LoginPage();
    },
  );
}

/// generated route for
/// [_i3.LoginView]
class LoginView extends _i4.PageRouteInfo<LoginViewArgs> {
  LoginView({
    required _i5.LoginCubit cubit,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         LoginView.name,
         args: LoginViewArgs(cubit: cubit, key: key),
         initialChildren: children,
       );

  static const String name = 'LoginView';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginViewArgs>();
      return _i3.LoginView(cubit: args.cubit, key: args.key);
    },
  );
}

class LoginViewArgs {
  const LoginViewArgs({required this.cubit, this.key});

  final _i5.LoginCubit cubit;

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginViewArgs{cubit: $cubit, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LoginViewArgs) return false;
    return cubit == other.cubit && key == other.key;
  }

  @override
  int get hashCode => cubit.hashCode ^ key.hashCode;
}
