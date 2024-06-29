import 'package:flutter/material.dart';

import '../../core/app/resources/strings.dart';

class FilledIconWidget extends StatelessWidget {
  const FilledIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      style: FilledButton.styleFrom(
          backgroundColor: Colors.grey[100]?.withOpacity(0.7)),
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
      icon: const Icon(
        Icons.sort,
        color: Colors.white,
      ),
      label: Text(
        Strings.listOfVariants,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: Colors.white),
      ),
    );
  }
}
