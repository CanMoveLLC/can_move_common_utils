// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../helpers/aliases.dart';

class TextFormItem extends StatelessWidget {
  final String label;
  final String? hint, value;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final StringCallback? onFieldSubmitted, onSaved, onChanged;
  final VoidCallback? onTap;
  final int maxLines;
  final bool autoCorrect;
  final bool autoFocus;
  final bool obscureText, isMoveing, enabled;
  final Color? fillColor;
  final Widget? suffixIcon;
  final Widget? prefix;
  final EdgeInsets? padding;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final FormFieldValidator<String>? validator;

  const TextFormItem({
    Key? key,
    required this.label,
    this.hint,
    this.controller,
    this.isMoveing = false,
    this.fillColor,
    this.onTap,
    this.onChanged,
    this.focusNode,
    this.prefix,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.autoFocus = false,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.autoCorrect = true,
    this.obscureText = false,
    this.validator,
    this.padding,
    this.enabled = true,
    this.value,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var inputTheme = Theme.of(context).inputDecorationTheme;
    return TextFormField(
      initialValue: value,
      obscureText: obscureText,
      enabled: enabled,
      controller: controller,
      focusNode: focusNode,
      onChanged: (value) {
        onChanged?.call(value);
      },
      onTap: () {
        onTap?.call();
      },
      autofocus: autoFocus,
      textInputAction: textInputAction,
      autocorrect: autoCorrect,
      maxLines: maxLines,
      style: textTheme.bodyMedium,
      onFieldSubmitted: (value) {
        onFieldSubmitted?.call(value);
      },
      onSaved: (value) {
        onSaved?.call(value);
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        /*suffixIconConstraints: BoxConstraints.tight(
          Size(20, 20),
        ),*/
        suffixIcon: isMoveing
            ? Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    backgroundColor: Theme.of(context).primaryColor,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              )
            : suffixIcon,
        prefix: prefix,
        filled: inputTheme.filled,
        hintText: hint,
        label: Text(label),
        hintStyle: inputTheme.hintStyle,
        fillColor: fillColor ?? inputTheme.fillColor,
        focusColor: inputTheme.focusColor,
        contentPadding: padding ?? inputTheme.contentPadding,
        enabledBorder: inputTheme.enabledBorder,
        disabledBorder: inputTheme.disabledBorder,
        focusedBorder: inputTheme.focusedBorder,
        errorBorder: inputTheme.errorBorder,
        focusedErrorBorder: inputTheme.focusedErrorBorder,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return validator?.call(value);
      },
    );
  }
}

class NoLabelTextFormItem extends StatelessWidget {
  final String? hint, value;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final StringCallback? onFieldSubmitted, onSaved, onChanged;
  final VoidCallback? onTap;
  final int maxLines;
  final bool autoCorrect;
  final bool autoFocus;
  final bool obscureText, isMoveing;
  final Color? fillColor;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final FormFieldValidator<String>? validator;

  const NoLabelTextFormItem({
    Key? key,
    this.hint,
    this.controller,
    this.isMoveing = false,
    this.fillColor,
    this.onTap,
    this.onChanged,
    this.focusNode,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.autoFocus = false,
    this.textInputAction = TextInputAction.next,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.autoCorrect = true,
    this.obscureText = false,
    this.validator,
    this.value,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var inputTheme = Theme.of(context).inputDecorationTheme;
    return TextFormField(
      onChanged: (value) {
        onChanged?.call(value);
      },
      onTap: () {
        onTap?.call();
      },
      maxLines: maxLines,
      initialValue: value,
      autofocus: autoFocus,
      focusNode: focusNode,
      controller: controller,
      obscureText: obscureText,
      autocorrect: autoCorrect,
      style: textTheme.bodyMedium,
      textInputAction: textInputAction,
      onFieldSubmitted: (String value) {
        onFieldSubmitted?.call(value);
      },
      onSaved: (String? value) {
        onSaved?.call(value);
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIconConstraints: BoxConstraints.tight(Size(20, 20)),
        suffixIcon: isMoveing
            ? Padding(
                padding: const EdgeInsets.all(3.0),
                child: SizedBox(
                  height: 15,
                  width: 15,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    backgroundColor: Theme.of(context).primaryColor,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              )
            : suffixIcon,
        hintText: hint,
        filled: inputTheme.filled,
        hintStyle: inputTheme.hintStyle,
        focusColor: inputTheme.focusColor,
        errorBorder: inputTheme.errorBorder,
        focusedBorder: inputTheme.focusedBorder,
        enabledBorder: inputTheme.enabledBorder,
        contentPadding: inputTheme.contentPadding,
        fillColor: fillColor ?? inputTheme.fillColor,
        focusedErrorBorder: inputTheme.focusedErrorBorder,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (String? value) {
        return validator?.call(value);
      },
    );
  }
}

class SelectFormItem extends StatelessWidget {
  final String label;
  final String? hint;
  final FocusNode? focusNode;
  final DynamicCallback? onSaved;
  final DynamicCallback? onChanged;
  final VoidCallback? onTap;
  final bool autoFocus;
  final Color? fillColor;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final FormFieldValidator<dynamic>? validator;
  final List<SelectFieldItem> items;
  final dynamic value;
  final bool isMoveing;

  const SelectFormItem({
    Key? key,
    required this.label,
    this.onChanged,
    this.hint,
    this.fillColor,
    this.onTap,
    this.focusNode,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.autoFocus = false,
    this.textInputAction = TextInputAction.next,
    this.onSaved,
    this.validator,
    required this.items,
    this.isMoveing = false,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var inputTheme = Theme.of(context).inputDecorationTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: textTheme.bodyLarge?.copyWith(
            color: textTheme.bodySmall?.color,
          ),
        ),
        SizedBox(height: 10),
        DropdownButtonFormField(
            focusNode: focusNode,
            onTap: () {
              onTap?.call();
            },
            value: value,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              return validator?.call(value);
            },
            onSaved: (item) {
              onSaved?.call(item);
            },
            style: textTheme.bodyMedium,
            icon: Icon(Icons.keyboard_arrow_down_outlined),
            elevation: 1,
            decoration: InputDecoration(
              filled: true,
              hintText: hint,
              hintStyle: textTheme.bodySmall,
              fillColor: fillColor ?? inputTheme.fillColor,
              focusColor: inputTheme.focusColor,
              contentPadding: const EdgeInsets.all(15),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  style: BorderStyle.none,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  style: BorderStyle.none,
                ),
              ),
              suffixIconConstraints: BoxConstraints.tight(
                Size(20, 20),
              ),
              /*suffixIcon: isMoveing
                  ? Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 15,
                        width: 15,
                        child: AMMoveingIndicator(
                            */ /* strokeWidth: 2,
                          backgroundColor: Theme.of(context).primaryColor,
                          color: Theme.of(context).accentColor,*/ /*
                            ),
                      ),
                    )
                  : null,*/
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.red[800]!,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.red[800]!,
                  width: 0.5,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            items: items
                .map(
                  (item) => DropdownMenuItem(
                    child: Text(item.label),
                    value: item.value,
                  ),
                )
                .toList(),
            onChanged: (value) {
              onChanged?.call(value);
            }),
      ],
    );
  }
}

class SelectFieldItem {
  final String label;
  final dynamic value;
  final dynamic extra;

  SelectFieldItem(this.label, this.value, {this.extra});

  @override
  bool operator ==(covariant SelectFieldItem other) {
    if (identical(this, other)) return true;

    return other.label == label && other.value == value && other.extra == extra;
  }

  @override
  int get hashCode => label.hashCode ^ value.hashCode ^ extra.hashCode;

  @override
  String toString() =>
      'SelectFieldItem(label: $label, value: $value, extra: $extra)';
}
