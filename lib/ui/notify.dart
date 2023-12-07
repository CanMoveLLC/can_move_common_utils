import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

/// This class appears to be a utility class for showing notifications using the oktoast library in a Flutter application.
/// It provides two main functions, showNotification and notify, for displaying notifications with different styles and options.
/// The notifications include a card-based UI with a title and content. Additionally,
/// There's a function notifyError which is essentially a shorthand for showing an error-style notification.
void showNotification(
  BuildContext context,
  String title,
  String content, {
  Duration? duration,
  VoidCallback? onTap,
}) {
  // Use the showToastWidget function from the oktoast library.
  showToastWidget(
    // Define a Card with specific properties for styling.
    Card(
      elevation: 10,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      // Create an InkWell to make the notification tappable.
      child: InkWell(
        onTap: () => onTap?.call(),
        // Container for the main notification content.
        child: Container(
          width: kIsWeb ? 300 : double.infinity,
          padding: const EdgeInsets.all(20),
          // Display title and content in a column layout.
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Display the title with a specific text style.
              Text(
                title,
                style: textTheme(context).bodyMedium,
              ),
              // Display the content with a limited number of lines.
              Text(
                content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: textTheme(context).bodySmall,
              ),
            ],
          ),
        ),
      ),
    ),
    // Configure showToastWidget options.
    handleTouch: true,
    dismissOtherToast: true,
    duration: duration ?? const Duration(seconds: 3),
    position: ToastPosition.top,
  );
}

// Function to show a simple notification.
void notify(String message, {bool error = false, Duration? duration}) {
  showToast(
    message,
    // Configure showToast options.
    dismissOtherToast: true,
    backgroundColor: error ? Colors.redAccent : Colors.white,
    radius: 5,
    textPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    duration: duration ?? const Duration(seconds: 3),
    position: ToastPosition.bottom,
    textStyle: TextStyle(
      color: error ? Colors.white : Colors.black,
      fontSize: 12,
    ),
  );
}

// Shorthand function to show an error-style notification.
void notifyError(String message) {
  return notify(message, error: true);
}
