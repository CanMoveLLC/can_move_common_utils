import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/ui/elevated_container.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../helpers/aliases.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: colorScheme(context).primary,
        child: InkWell(
          onTap: () {
            router(context).pop();
          },
          borderRadius: BorderRadius.circular(50),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey[200],
            ),
          ),
        ),
      ),
    );
  }
}

class ShadowedButton extends StatelessWidget {
  final VoidCallback? onTap;

  // offset of the elevation
  final Offset offset;

  // the color of the shadow
  final Color? shadowColor;

  // color  of the container
  final Color? color;

  // the radius of the container's corners
  final BorderRadiusGeometry? radius;

  final EdgeInsetsGeometry? padding;
  final bool safeTop, safeBottom, isLoading;
  final double? width;
  final double? height;
  final String label;

  const ShadowedButton({
    super.key,
    required this.label,
    this.radius,
    this.safeBottom = false,
    this.safeTop = false,
    this.padding,
    this.onTap,
    this.width,
    this.height,
    this.color,
    this.offset = const Offset(0, 10),
    this.shadowColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          ElevatedContainer(
            safeBottom: safeBottom,
            safeTop: safeTop,
            offset: offset,
            width: isLoading ? 50 : width,
            height: height,
            radius: radius,
            shadowColor: shadowColor,
            child: MaterialButton(
              color: color ?? Theme.of(context).colorScheme.primary,
              disabledColor: shadowColor,
              onPressed: () {
                if (!isLoading) onTap?.call();
              },
              padding: padding ?? EdgeInsets.zero,
              elevation: 0,
              focusElevation: 0,
              disabledElevation: 0,
              highlightElevation: 0,
              hoverElevation: 5,
              textColor: Colors.grey[100],
              child: isLoading
                  ? SizedBox(
                      width: 20,
                      height: 20,
                      child: progressIndicator(context),
                    )
                  : const Text(""),
            ),
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: isLoading ? 0.0 : 1.0,
            child: Text.rich(
              TextSpan(
                text: label,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    if (!isLoading) onTap?.call();
                  },
              ),
              style: textTheme(context).bodyMedium?.copyWith(
                    color: Colors.grey[100],
                  ),
            ),
          )
        ],
      ),
    );
  }
}

class NoShadowButton extends StatelessWidget {
  final VoidCallback? onTap;

  // offset of the elevation
  final Offset offset;

  // the color of the shadow
  final Color? shadowColor;

  // color  of the container
  final Color? color;

  // the radius of the container's corners
  final BorderRadiusGeometry? radius;

  final EdgeInsetsGeometry? padding = EdgeInsets.zero;
  final EdgeInsetsGeometry? /*padding,*/ margin;
  final bool safeTop, safeBottom, isLoading;
  final double? width;
  final double? height;
  final String label;

  const NoShadowButton({
    super.key,
    required this.label,
    this.radius,
    this.safeBottom = false,
    this.safeTop = false,
    // this.padding,
    this.margin,
    this.onTap,
    this.width,
    this.height,
    this.color,
    this.offset = const Offset(0, 10),
    this.shadowColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: safeTop,
      bottom: safeBottom,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: margin ?? EdgeInsets.zero,
              child: AnimatedContainer(
                width: isLoading ? 50 : width,
                height: height,
                duration: const Duration(milliseconds: 200),
                child: MaterialButton(
                  color: color ?? Theme.of(context).colorScheme.primary,
                  disabledColor: shadowColor,
                  onPressed: () {
                    if (!isLoading) onTap?.call();
                  },
                  padding: padding ?? EdgeInsets.zero,
                  elevation: 0,
                  focusElevation: 0,
                  disabledElevation: 0,
                  highlightElevation: 0,
                  hoverElevation: 5,
                  textColor: Colors.grey[100],
                  child: isLoading
                      ? SizedBox(
                          width: 20,
                          height: 20,
                          child: progressIndicator(context),
                        )
                      : const Text(""),
                ),
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 200),
              opacity: isLoading ? 0.0 : 1.0,
              child: Text.rich(
                TextSpan(
                  text: label,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      if (!isLoading) onTap?.call();
                    },
                ),
                style: textTheme(context).bodyMedium?.copyWith(
                      color: Colors.grey[100],
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextyButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final EdgeInsets? padding;
  final Color? color;

  const TextyButton({
    super.key,
    this.padding,
    this.onTap,
    required this.label,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: textTheme(context).labelLarge?.copyWith(
                color: onTap == null
                    ? Colors.grey
                    : color ?? colorScheme(context).primary,
              ),
        ),
      ),
    );
  }
}

class MoveBackButton extends StatelessWidget {
  const MoveBackButton({super.key, this.onTap, this.elevate = false});

  final VoidCallback? onTap;
  final bool elevate;

  @override
  Widget build(BuildContext context) {
    var inkWell = InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap ?? () => router(context).pop(),
      child: Image.asset(
        "assets/images/arrow-left.png",
        color: textTheme(context).bodyMedium?.color,
      ),
    );
    if (!elevate) {
      return inkWell;
    }
    return Material(
      elevation: 5,
      type: MaterialType.button,
      color: theme(context).scaffoldBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: SizedBox(height: 40, width: 40, child: inkWell),
    );
  }
}

class FilterByDateBtn extends StatelessWidget {
  const FilterByDateBtn({
    super.key,
    required this.onPickDate,
    required this.onClearTap,
    this.initialDate,
    this.label = "Filter by date",
  });

  final DateTimeCallback onPickDate;
  final VoidCallback onClearTap;
  final String label;
  final DateTime? initialDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () async {
            final DateTime? datE = await showDatePicker(
              context: context,
              initialDate: initialDate ?? DateTime.now(),
              firstDate: DateTime.utc(2020),
              lastDate: DateTime.now(),
            );
            if (datE == null) {
              return;
            }
            onPickDate(datE);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/calendar.png",
                height: 20,
                color: textTheme(context).bodyMedium?.color,
              ),
              const SizedBox(width: 7),
              Text(label),
            ],
          ),
        ),
        if (label != "Filter by date") const SizedBox(width: 50),
        if (label != "Filter by date")
          InkWell(onTap: onClearTap, child: const Text("Clear")),
      ],
    );
  }
}
