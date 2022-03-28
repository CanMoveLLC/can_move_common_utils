import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/foundation.dart';

import 'theme.dart';
import 'dialog_shell.dart';
import 'form_item.dart';
import 'form_shell.dart';

void popUpText(BuildContext context, String text, {String title = 'Info'}) {
  showInfoDialog(
    context,
    height: 300,
    title: title,
    child: Center(
      child: Text(
        text,
      ),
    ),
  );
}

Future<String?> getSingleTextInput(BuildContext context,
    {required String label, bool isLong = false}) async {
  return await showModal(
      context: context,
      builder: (context) {
        return _SingleTextForm(
          label: label,
          isLong: isLong,
        );
      });
}

Future<int?> getSingleNumberInput(BuildContext context,
    {required String label}) async {
  return await showModal(
      context: context,
      builder: (context) {
        return _SingleNumberForm(
          label: label,
        );
      });
}

class _SingleTextForm extends HookWidget {
  _SingleTextForm({Key? key, required this.label, this.isLong = false})
      : super(key: key);
  final String label;
  final bool isLong;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var input = useState<String?>(null);

    return FormShell(
      title: label,
      formKey: _formKey,
      height: !isLong ? 200 : 330,
      onOk: () => _done(
        context,
        input.value,
      ),
      onCancel: () {
        Navigator.of(context).pop();
      },
      children: [
        TextFormItem(
          value: input.value,
          textInputAction: TextInputAction.next,
          autoCorrect: false,
          maxLines: !isLong ? 1 : 10,
          onChanged: (value) {
            input.value = value;
          },
          label: label,
          hint: "Enter here.",
        ),
      ],
    );
  }

  _done(
    BuildContext context,
    String? value,
  ) async {
    Navigator.of(context).pop(value);
  }
}

class _SingleNumberForm extends HookWidget {
  _SingleNumberForm({Key? key, required this.label}) : super(key: key);
  final String label;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var input = useState<String?>(null);

    return FormShell(
      title: label,
      formKey: _formKey,
      height: 200,
      width: kIsWeb ? screenWidth(context) / 2 : screenWidth(context),
      onOk: () => _done(
        context,
        input.value,
      ),
      onCancel: () {
        Navigator.of(context).pop();
      },
      children: [
        TextFormItem(
          value: input.value,
          textInputAction: TextInputAction.next,
          autoCorrect: false,
          maxLines: 1,
          onChanged: (value) {
            input.value = value;
          },
          validator: (value) {
            if (value == null) return "Input valid price";
            if (int.tryParse(value) == null) return "Input valid price";
            if (int.parse(value) < 0) return "Input valid price";
            return null;
          },
          label: label,
          hint: "Enter here.",
        ),
      ],
    );
  }

  _done(
    BuildContext context,
    String? value,
  ) async {
    if (_formKey.currentState?.validate() ?? false)
      Navigator.of(context).pop(int.parse(value!));
  }
}

class _RatingForm extends HookWidget {
  _RatingForm({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    var input = useState<double>(1.0);

    return FormShell(
      title: label,
      height: 150,
      onOk: () => _done(
        context,
        input.value,
      ),
      onCancel: () {
        Navigator.of(context).pop();
      },
      children: [
        RatingBar.builder(
          initialRating: 1,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            input.value = rating;
          },
        ),
      ],
    );
  }

  _done(
    BuildContext context,
    double value,
  ) async {
    Navigator.of(context).pop(value);
  }
}

Future<double?> getRating(BuildContext context,
    {String label = "Rate this driver"}) async {
  return await showModal(
      context: context,
      builder: (context) {
        return _RatingForm(
          label: label,
        );
      });
}
