import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    required this.onPressed,
    Key? key,
  }) : super(key: key);
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Ooops...there nothing to show T_T',
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
