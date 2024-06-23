import 'package:animations/animations.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

class DialogShell extends StatelessWidget {
  const DialogShell({
    Key? key,
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
  }) : super(key: key);

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
      insetPadding: EdgeInsets.symmetric(horizontal: 25),
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
              child: LinearProgressIndicator(
                minHeight: 2,
              ),
              preferredSize: Size(
                screenWidth(context),
                1,
              ),
            ),
            centerTitle: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
            leading: IconButton(
              color: Colors.red,
              onPressed:
              loading ? null : onCancel ?? () => _defaultAction(context),
              icon: Icon(Icons.close),
            ),
            title: Text(
              title,
              style: textTheme(context).bodyLarge,
            ),
            actions: [
              IconButton(
                onPressed:
                loading ? null : onOk ?? () => _defaultAction(context),
                icon: Icon(Icons.check),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: padding,
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  _defaultAction(BuildContext context) {
    Navigator.of(context).pop();
  }
}

Future showInfoDialog(BuildContext context, {
  String title = 'Info',
  double height = 500,
  double width = 400,
  VoidCallback? onOk,
  VoidCallback? onCancel,
  required Widget child,
}) async {
  return await showModal(
      context: context,
      builder: (context) {
        return DialogShell(
          height: height,
          width: width,
          onCancel: onCancel,
          onOk: onOk,
          title: title,
          child: child,
        );
      });
}

Future showFormDialog(BuildContext context, {
  String title = 'Form',
  double height = 500,
  double? width,
  VoidCallback? onOk,
  VoidCallback? onCancel,
  required Widget child,
}) async {
  return await showModal(
      context: context,
      builder: (context) {
        return DialogShell(
          height: height,
          width: width,
          onCancel: onCancel,
          onOk: onOk,
          title: title,
          child: child,
        );
      });
}
