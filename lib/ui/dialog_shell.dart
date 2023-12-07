import 'package:animations/animations.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

class DialogShell extends StatelessWidget {
  const DialogShell({
    super.key,
    this.title = 'Info',
    this.height = 200,
    this.width,
    this.onOk,
    this.onCancel,
    required this.child,
    this.loading = false,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 30.0,
      vertical: 10,
    ),
  });

  final double height;
  final double? width;
  final VoidCallback? onOk, onCancel;
  final Widget child;
  final String title;
  final bool loading;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        constraints: BoxConstraints.expand(
          width: width,
          height: height,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            bottom: !loading
                ? null
                : PreferredSize(
                    preferredSize: Size(
                      screenWidth(context),
                      1,
                    ),
                    child: const LinearProgressIndicator(minHeight: 2),
                  ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            leading: IconButton(
              color: Colors.red,
              onPressed:
                  loading ? null : onCancel ?? () => _defaultAction(context),
              icon: const Icon(Icons.close),
            ),
            title: Text(title, style: textTheme(context).titleMedium),
            actions: [
              IconButton(
                onPressed:
                    loading ? null : onOk ?? () => _defaultAction(context),
                icon: const Icon(Icons.check),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(padding: padding, child: child),
          ),
        ),
      ),
    );
  }

  void _defaultAction(BuildContext context) {
    return Navigator.of(context).pop();
  }
}

Future<void> showInfoDialog(
  BuildContext context, {
  String title = 'Info',
  double height = 500,
  double width = 400,
  VoidCallback? onOk,
  VoidCallback? onCancel,
  required Widget child,
}) {
  return showModal<void>(
    context: context,
    builder: (BuildContext context) {
      return DialogShell(
        height: height,
        width: width,
        onCancel: onCancel,
        onOk: onOk,
        title: title,
        child: child,
      );
    },
  );
}

Future<void> showFormDialog(
  BuildContext context, {
  String title = 'Form',
  double height = 500,
  double? width,
  VoidCallback? onOk,
  VoidCallback? onCancel,
  required Widget child,
}) {
  return showModal<void>(
    context: context,
    builder: (BuildContext context) {
      return DialogShell(
        height: height,
        width: width,
        onCancel: onCancel,
        onOk: onOk,
        title: title,
        child: child,
      );
    },
  );
}
