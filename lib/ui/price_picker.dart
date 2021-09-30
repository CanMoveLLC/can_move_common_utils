import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'misc.dart';

class PricePicker extends HookWidget {
  const PricePicker({
    Key? key,
    /*required this.onPriceChanged,*/
    /*this.initial = 0, */ required this.price$,
  }) : super(key: key);

  final ValueNotifier<double> price$;
  // final Function(double) onPriceChanged;

  @override
  Widget build(BuildContext context) {
    // var price = useState(initial);
    // print(initial);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            if (price$.value == 0) return;
            price$.value -= 1;
            // onPriceChanged(price.value + 0.0);
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: colorScheme(context).primary,
                width: 0.5,
              ),
              color: colorScheme(context).primary,
            ),
            child: Center(
              child: Text(
                "-",
                style: textTheme(context).headline4?.copyWith(
                      color: theme(context).cardTheme.color,
                    ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text.rich(
          TextSpan(
            text: "\$",
            style: textTheme(context).headline3?.copyWith(
                  fontSize: 50,
                ),
            children: [
              TextSpan(
                text: "${price$.value.toInt()}",
                style: textTheme(context).headline2?.copyWith(
                      fontSize: 70,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var p = await getSingleNumberInput(
                      context,
                      label: "Enter price.",
                    );
                    if (p != null) price$.value = p + 0.0;
                  },
              ),
              /*TextSpan(
                text: ".00",
                style: textTheme(context).headline3,
              ),*/
            ],
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {
            price$.value += 1;
            // onPriceChanged(price.value + 0.0);
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: colorScheme(context).primary,
                width: 0.5,
              ),
              color: colorScheme(context).primary,
            ),
            child: Center(
              child: Text(
                "+",
                style: textTheme(context).headline4?.copyWith(
                      color: theme(context).cardTheme.color,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
