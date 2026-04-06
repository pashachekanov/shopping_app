import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/domain_models/email_address.dart';
import 'package:shopping_app/domain_models/failure.dart';
import 'package:shopping_app/domain_models/password.dart';
import 'package:shopping_app/feature/login/cubit/login_cubit.dart';
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
            errorMessage = 'Sorry, something went wrong, please try again.';
          }
          toastification.show(
            context: context,
            type: ToastificationType.success,
            style: ToastificationStyle.flat,
            autoCloseDuration: const Duration(seconds: 5),
            description: RichText(text: TextSpan(text: errorMessage)),
            alignment: Alignment.topCenter,
            direction: TextDirection.ltr,
            animationDuration: const Duration(milliseconds: 300),
            icon: const Icon(Icons.check),
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
          await context.read<LoginCubit>().openLoginForm(
            context.router,
          );
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
                    'Welcome back! Glad to see you, Again!',
                    style:
                        Theme.of(
                          context,
                        ).textTheme.headlineSmall!.copyWith(
                          fontFamily: 'MyCustomFont',
                        ),
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
                    onPressed: () {},
                    child: const Text('Login'),
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
      labelText: 'Enter your username',
      labelStyle: const TextStyle(
        fontFamily: 'MyCustomFont',
      ),
      floatingLabelStyle: state.emailAddress.value.isLeft() || isError
          ? Theme.of(context).textTheme.bodySmall!.copyWith(color: primaryRed)
          : Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: primaryNeutral),
      fillColor: state.emailAddress.value.isLeft() || isError
          ? primaryRed.withValues(alpha: 0.2)
          : iconBorderColor,
    ),
    onChanged: (value) {},
    // context.read<LoginBloc>().add(LoginEvent.emailChanged(value)),
    validator: (email) =>
        EmailAddress(email ?? '').isValid() ? null : 'Email error',
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
      labelText: 'Enter your password',
      labelStyle: const TextStyle(
        fontFamily: 'MyCustomFont',
      ),
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
        onPressed: () {},
        padding: const EdgeInsets.all(16),
        icon: SvgPicture.asset(
          'assets/svg/password_icon.svg',
          colorFilter: ColorFilter.mode(
            state.emailAddress.value.isLeft() || isError
                ? primaryRed
                : iconBorderColor,
            BlendMode.srcIn,
          ),
        ),
      ),
    ),
    onFieldSubmitted: (_) {
      _passwordFocusNode.unfocus();
      // context.read<LoginBloc>().add(
      //   const LoginEvent.loginWithEmailAndPasswordPressed(),
      // );
    },
    onChanged: (value) {},
    // context.read<LoginBloc>().add(LoginEvent.passwordChanged(value)),
    validator: (pwd) => Password(pwd ?? '').isValid() ? null : 'Error',
  );
}
