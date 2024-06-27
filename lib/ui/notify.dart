import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

void showNotification(
  BuildContext context,
  String title,
  String content, {
  Duration? duration, VoidCallback? onTap,
}) {
  showToastWidget(
    Card(
      elevation: 10,
      margin: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () => onTap?.call(),
        child: Container(
          width: kIsWeb ? 300 : double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textTheme(context).labelMedium,
              ),
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
    handleTouch: true,
    dismissOtherToast: true,
    duration: duration ?? Duration(seconds: 3),
    position: ToastPosition.top,
  );
}

void notify(String message, {bool error = false, Duration? duration}) {
  showToast(
    message,
    dismissOtherToast: true,
    backgroundColor: error ? Colors.redAccent : Colors.white,
    radius: 5,
    textPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    duration: duration ?? Duration(seconds: 3),
    position: ToastPosition.bottom,
    textStyle: TextStyle(
      color: error ? Colors.white : Colors.black,
      fontSize: 12,
    ),
  );
}

void notifyError(String message) {
  return notify(message, error: true);
}
