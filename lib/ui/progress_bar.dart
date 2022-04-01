import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key, this.percentage = 50.0, this.color})
      : super(key: key);

  final double percentage;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: textTheme(context).caption?.color?.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30.0),
          ),
          width: screenWidth(context),
          height: 8,
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            color: color ?? theme(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(30.0),
          ),
          width: screenWidth(context) * (percentage / 100),
          height: 12,
        )
      ],
    );
  }
}
