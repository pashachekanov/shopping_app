import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.error,
        size: 64,
        color: Theme.of(context).colorScheme.error,
      ),
      const SizedBox(height: 20),
      Text(
        'Sorry, something went wrong X_X',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: 24,
          color: Theme.of(context).colorScheme.onSecondary,
        ),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: onPressed,
        child: Text(
          'Reload',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    ],
  );
}
