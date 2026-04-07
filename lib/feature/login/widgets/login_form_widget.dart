import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/domain_models/email_address.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/domain_models/password.dart';
import 'package:shopping_app/feature/login/cubit/login_cubit.dart';
import 'package:shopping_app/localization/shopping_app_localization.dart';
import 'package:shopping_app/routes/router.gr.dart';
import 'package:shopping_app/style/theme.dart';
import 'package:toastification/toastification.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var errorMessage = '';
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) => state.loginResult?.fold(
        (failure) async {
          if (failure is ServerFailure) {
            errorMessage = failure.serverResponse;
          } else if (failure is PlatformFailure) {
            errorMessage = failure.platformResponse;
          } else {
            errorMessage = ShoppingAppLocalization.of(
              context,
            ).general_error_message;
          }
          toastification.show(
            context: context,
            type: ToastificationType.success,
            style: ToastificationStyle.flat,
            autoCloseDuration: const Duration(seconds: 5),
            description: RichText(
              text: TextSpan(
                text: errorMessage,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            alignment: Alignment.bottomCenter,
            direction: TextDirection.ltr,
            animationDuration: const Duration(milliseconds: 300),
            icon: const Icon(Icons.info_outline),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color(0x07000000),
                blurRadius: 16,
                offset: Offset(0, 16),
              ),
            ],
            closeOnClick: true,
            pauseOnHover: true,
            dragToClose: true,
            applyBlurEffect: true,
          );
        },
        (_) async {
          await context.router.replaceAll([const HomeRoute()]);
        },
      ),
      builder: (context, state) {
        final isError = state.loginResult?.isLeft();
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(height: 28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    ShoppingAppLocalization.of(context).login_welcome,
                    style: TextTheme.of(
                      context,
                    ).titleMedium!.copyWith(fontSize: 30),
                  ),
                  const SizedBox(height: 32),
                  _buildEmailTextFormField(
                    context,
                    state,
                    isError ?? false,
                  ),
                  const SizedBox(height: 15),
                  _buildPasswordTextFormField(
                    context,
                    state,
                    isError ?? false,
                    errorMessage,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () => context.read<LoginCubit>().performLogin(),
                    child: Text(ShoppingAppLocalization.of(context).login),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmailTextFormField(
    BuildContext context,
    LoginState state,
    bool isError,
  ) => TextFormField(
    autocorrect: false,
    focusNode: _emailFocusNode,
    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      filled: true,
      labelText: ShoppingAppLocalization.of(context).login_label_email,

      floatingLabelStyle: state.emailAddress.value.isLeft() || isError
          ? Theme.of(context).textTheme.bodySmall!.copyWith(color: primaryRed)
          : Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: primaryNeutral),
      fillColor: state.emailAddress.value.isLeft() || isError
          ? primaryRed.withValues(alpha: 0.2)
          : iconBorderColor,
    ),
    onChanged: (value) => context.read<LoginCubit>().emailChanged(value),
    validator: (email) => EmailAddress(email ?? '').isValid()
        ? null
        : ShoppingAppLocalization.of(context).login_label_email_error,
    onFieldSubmitted: (_) {
      _emailFocusNode.unfocus();
      _passwordFocusNode.requestFocus();
    },
  );

  Widget _buildPasswordTextFormField(
    BuildContext context,
    LoginState state,
    bool isError,
    String errorMessage,
  ) => TextFormField(
    obscureText: !state.isPasswordShown,
    autocorrect: false,
    focusNode: _passwordFocusNode,
    textInputAction: TextInputAction.send,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      filled: true,
      labelText: ShoppingAppLocalization.of(context).login_label_password,

      errorText: isError ? errorMessage : null,
      errorMaxLines: 5,
      floatingLabelStyle: state.password.value.isLeft() || isError
          ? Theme.of(context).textTheme.bodySmall!.copyWith(color: primaryRed)
          : Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: primaryNeutral),
      fillColor: state.password.value.isLeft() || isError
          ? primaryRed.withValues(alpha: 0.2)
          : iconBorderColor,
      suffixIcon: IconButton(
        onPressed: () => context.read<LoginCubit>().passwordVisibilityToggled(),
        padding: const EdgeInsets.all(16),
        icon: SvgPicture.asset(
          'assets/svg/password_icon.svg',
          colorFilter: ColorFilter.mode(
            state.emailAddress.value.isLeft() || isError
                ? primaryRed
                : textHintColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    ),

    onFieldSubmitted: (_) {
      _passwordFocusNode.unfocus();
    },
    onChanged: (value) => context.read<LoginCubit>().passwordChanged(value),
    validator: (pwd) => Password(pwd ?? '').isValid()
        ? null
        : ShoppingAppLocalization.of(context).login_label_password_error,
  );
}
