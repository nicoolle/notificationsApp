import 'package:flutter/material.dart';

class MiAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MiAppBar(
      {super.key,
      required this.title})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  final String title;

  @override
  final Size preferredSize;

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }
}
