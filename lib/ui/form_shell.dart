import 'package:flutter/material.dart';

import 'dialog_shell.dart';
import 'notify.dart';

/// The FormShell class is a stateless widget that serves as a shell for displaying forms in a dialog.
/// It encapsulates common form-related functionality, including form validation and handling Ok and Cancel actions.
class FormShell extends StatelessWidget {
  // Constructor for the FormShell widget.
  const FormShell({
    Key? key,
    // Required parameters for the FormShell.
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

  // Height of the form shell.
  final double height;

  // Optional width of the form shell.
  final double? width;

  // Callback functions for Ok and Cancel actions.
  final VoidCallback onOk, onCancel;

  // Key for identifying the form (if needed).
  final GlobalKey<FormState>? formKey;

  // List of form children (widgets).
  final List<Widget> children;

  // Title of the form shell.
  final String title;

  // Flag indicating whether the form is in a loading state.
  final bool loading;

  // Padding for the form.
  final EdgeInsets padding;

  // Build method for rendering the FormShell widget.
  @override
  Widget build(BuildContext context) {
    // Returns a DialogShell widget with a Form child.
    return DialogShell(
      width: width,
      height: height,
      title: title,
      loading: loading,
      onCancel: onCancel,
      padding: padding,
      // Ok action validates the form and calls the onOk callback.
      onOk: () {
        formKey?.currentState?.save();
        if (formKey?.currentState?.validate() == false) {
          notify('Please complete the form', error: true);
          return;
        }
        onOk.call();
      },
      child: Form(
        // Associates the form key with the Form widget.
        key: formKey,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            // Includes form children.
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
