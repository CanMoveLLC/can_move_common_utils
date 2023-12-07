import 'package:can_move_common_utils/ui/misc.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';

/// The PricePicker class is a Flutter widget designed to allow users to pick a price.
/// It uses a ValueNotifier<double> to keep track of the selected price,
/// And the UI consists of buttons to increment and decrement the price and a text field for direct input.
/// The class utilizes the NumberFormat class to format the displayed price as compact currency.
class PricePicker extends HookWidget {
  PricePicker({
    super.key,
    required this.price$,
  });

  // ValueNotifier to track the selected price
  final ValueNotifier<double> price$;

  // NumberFormat for formatting the displayed price
  final _formatter =
      NumberFormat.compactSimpleCurrency(locale: "en", name: "USD");

  @override
  Widget build(BuildContext context) {
    // UI build method
    // Row widget to hold the price picker components
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Button to decrement the price
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            // Ensure the price is not negative before decrementing
            if (price$.value == 0) return;
            price$.value -= 1;
            // onPriceChanged(price.value + 0.0);
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: textTheme(context).bodySmall?.color?.withOpacity(0.3),
            ),
            child: Center(
              child: Icon(
                Icons.remove,
                color: textTheme(context).bodyMedium?.color,
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        // Text field to display and edit the price
        InkWell(
          onTap: () async {
            // Show a number input dialog and update the price on confirmation
            var pri =
                await getSingleNumberInput(context, label: "Enter a price");
            if (pri == null) return;
            price$.value = pri.toDouble();
          },
          child: Text(
            _formatter.format(price$.value),
            style: textTheme(context).headlineMedium?.copyWith(
                  fontSize: 50,
                ),
          ),
        ),
        const SizedBox(width: 5),
        // Button to increment the price
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            // Increment the price
            price$.value += 1;
            // onPriceChanged(price.value + 0.0);
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: textTheme(context).bodySmall?.color?.withOpacity(0.3),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: textTheme(context).bodyMedium?.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// The PriceDisplay class is a stateless widget in Flutter designed to display a price.
/// It consists of a text widget, stylized to resemble a price display, and it allows a callback function to be triggered when tapped.
class PriceDisplay extends StatelessWidget {
  const PriceDisplay({
    super.key,
    required this.price,
    this.onTap,
  });

  final double price;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text.rich(
        TextSpan(
          text: "\$",
          style: textTheme(context).displaySmall?.copyWith(fontSize: 50),
          children: [
            TextSpan(
              text: "${price.toInt()}",
              style: textTheme(context).displayMedium?.copyWith(fontSize: 70),
            ),
          ],
          recognizer: TapGestureRecognizer()..onTap = onTap,
        ),
      ),
    );
  }
}
