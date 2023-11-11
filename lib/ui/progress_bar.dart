// Import necessary packages and files
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

/// Define the ProgressBar class, extending StatelessWidget
/// The `ProgressBar` class is a Flutter widget designed to display a progress bar.
/// It uses two containers within a stack to create the progress bar effect, with the animated container representing the progress itself.
/// It takes parameters such as the percentage and color of the progress bar.
/// The `ProgressBar` class is well-structured, using Flutter's `Stack` and `AnimatedContainer` widgets effectively.
/// It allows customization through parameters like `percentage` and `color`.
/// The animation duration is set for a smooth transition, and the use of `theme` and `textTheme` suggests that it's designed to adhere to the overall theme styling of the app.
class ProgressBar extends StatelessWidget {
  // Constructor with optional parameters for percentage and color
  const ProgressBar({Key? key, this.percentage = 50.0, this.color})
      : super(key: key);

  // Declare variables for percentage and color
  final double percentage;
  final Color? color;

  // Build method to create the widget
  @override
  Widget build(BuildContext context) {
    // Stack widget to overlay two containers
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        // Background container representing the whole progress bar
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            // Set color with opacity for a semi-transparent effect
            color: textTheme(context).bodySmall?.color?.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30.0),
          ),
          // Set width, height, and other properties
          width: screenWidth(context),
          height: 8,
        ),
        // Animated container representing the actual progress
        AnimatedContainer(
          // Set duration for the animation
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            // Set color based on the provided color or use the primary color from the theme
            color: color ?? theme(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(30.0),
          ),
          // Set width, height, and other properties based on the percentage
          width: screenWidth(context) * (percentage / 100),
          height: 12,
        )
      ],
    );
  }
}
