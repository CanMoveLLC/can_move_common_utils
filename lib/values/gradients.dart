import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

class Gradients {
  static Gradient primaryGradient(BuildContext context) {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        theme(context).colorScheme.primary,
        theme(context).colorScheme.secondary,
      ],
    );
  }
}
