import 'package:flutter/material.dart';

import 'dialog_shell.dart';
import 'notify.dart';

class FormShell extends StatelessWidget {
  const FormShell({
    Key? key,
    required this.title,
    required this.height,
    this.width,
    required this.onOk,
    required this.onCancel,
    this.formKey,
    required this.children,
    this.loading = false,
    this.padding = const EdgeInsets.symmetric(
  horizontal: 30.0,
  vertical: 10,
  ),
  }) : super(key: key);

  final double height;
  final double? width;
  final VoidCallback onOk, onCancel;
  final GlobalKey<FormState>? formKey;
  final List<Widget> children;
  final String title;
  final bool loading;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return DialogShell(
      width: width,
      height: height,
      title: title,
      loading: loading,
      onCancel: onCancel,
      padding: padding,
      onOk: () {
        formKey?.currentState?.save();
        if (formKey?.currentState?.validate() == false) {
          notify('Please complete the form', error: true);
          return;
        }
        onOk.call();
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ...children,
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
