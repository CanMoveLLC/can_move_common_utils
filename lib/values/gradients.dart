import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

/// This class, Gradients, appears to be responsible for defining gradients used in the UI, particularly a primary gradient.
/// It imports can_move_common_utils and flutter/material.dart.
/// The primary gradient is defined using the primary and secondary colors from the theme.
class Gradients {
  // Static method to define a primary gradient based on the provided context
  static Gradient primaryGradient(BuildContext context) {
    // Return a LinearGradient
    return LinearGradient(
      // Define the starting point of the gradient
      begin: Alignment.topLeft,
      // Define the ending point of the gradient
      end: Alignment.bottomRight,
      // Define the colors of the gradient using the primary and secondary colors from the theme
      colors: [
        theme(context)
            .colorScheme
            .primary, // Color from the primary color in the theme
        theme(context)
            .colorScheme
            .secondary, // Color from the secondary color in the theme
      ],
    );
  }
}
