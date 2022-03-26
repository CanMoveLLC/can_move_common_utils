import 'package:can_move_common_utils/ui/misc.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

class PricePicker extends HookWidget {
  PricePicker({
    Key? key,
    /*required this.onPriceChanged,*/
    /*this.initial = 0, */ required this.price$,
  }) : super(key: key);

  final ValueNotifier<double> price$;

  // final Function(double) onPriceChanged;
  final _formatter =
      NumberFormat.compactSimpleCurrency(locale: "en", name: "USD");

  @override
  Widget build(BuildContext context) {
    // var price = useState(initial);
    // print(initial);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            if (price$.value == 0) return;
            price$.value -= 1;
            // onPriceChanged(price.value + 0.0);
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: textTheme(context).caption?.color?.withOpacity(0.3),
            ),
            child: Center(
              child: Icon(
                Icons.remove,
                color: textTheme(context).bodyText2?.color,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () async {
            var pri =
                await getSingleNumberInput(context, label: "Enter a price");
            if (pri == null) return;
            price$.value = pri.toDouble();
          },
          child: Text(
            _formatter.format(price$.value),
            style: textTheme(context).headline4?.copyWith(
                  fontSize: 50,
                ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            price$.value += 1;
            // onPriceChanged(price.value + 0.0);
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: textTheme(context).caption?.color?.withOpacity(0.3),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: textTheme(context).bodyText2?.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PriceDisplay extends StatelessWidget {
  const PriceDisplay({
    Key? key,
    required this.price,
    this.onTap,
  }) : super(key: key);

  final double price;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text.rich(
        TextSpan(
          text: "\$",
          style: textTheme(context).headline3?.copyWith(fontSize: 50),
          children: [
            TextSpan(
              text: "${price.toInt()}",
              style: textTheme(context).headline2?.copyWith(fontSize: 70),
            ),
          ],
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
      ),
    );
  }
}
