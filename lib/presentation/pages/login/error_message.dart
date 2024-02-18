import 'package:flutter/material.dart';

class LoginErrorMessage extends StatelessWidget {
  const LoginErrorMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
        padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
        decoration: const BoxDecoration(color: Colors.black12),
        child: Row(
          children: [
            const Icon(
              Icons.info_outline,
              color: Colors.red,
            ),
            Text(
              ' The time is wrong. Try again.',
              style: textTheme.bodyMedium
                  ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
