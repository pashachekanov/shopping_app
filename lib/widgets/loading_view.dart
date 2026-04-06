import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    Key? key,
    this.color,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) => Container(
    width: double.infinity,
    height: double.infinity,
    color: Theme.of(context).colorScheme.surface,
    child: Center(
      child: SizedBox(
        height: 56,
        width: 56,
        child: CircularProgressIndicator(
          strokeWidth: 3,
          color: color,
        ),
      ),
    ),
  );
}
