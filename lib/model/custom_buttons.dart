import 'package:can_move_common_utils/helpers/utils.dart';
import 'package:can_move_common_utils/ui/elevated_container.dart';
import 'package:can_move_common_utils/ui/theme.dart';
import 'package:flutter/material.dart';

/*
class SliverShadowedButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;

  // offset of the elevation
  final Offset offset;

  // the color of the shadow
  final Color shadowColor;

  // color  of the container
  final Color color;

  // the radius of the container's corners
  final BorderRadiusGeometry? radius;

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry margin;
  final bool safeTop;
  final bool safeBottom;
  final double width, height;

  const SliverShadowedButton({
    Key? key,
    this.radius,
    required this.width,
    required this.height,
    this.safeBottom = false,
    this.safeTop = false,
    this.padding,
    @required this.onTap,
    this.margin,
    this.color = AppColors.PRIMARY,
    this.offset = const Offset(0, 10),
    this.shadowColor = AppColors.GREEN_LIGHTER,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: margin ?? EdgeInsets.zero,
      sliver: SliverToBoxAdapter(
        child: ShadowedButton(
          safeBottom: safeBottom,
          safeTop: safeTop,
          width: width,
          height: height,
          margin: margin,
          offset: offset,
          color: color,
          radius: radius,
          shadowColor: shadowColor,
          child: child,
          padding: padding,
          onTap: onTap,
        ),
      ),
    );
  }
}
*/

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key? key,
  }) : super(key: key);

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
  final EdgeInsetsGeometry? margin;
  final bool safeTop, safeBottom, isLoading;
  final double? width;
  final double? height;
  final String label;

  const ShadowedButton({
    Key? key,
    required this.label,
    this.radius,
    this.safeBottom = false,
    this.safeTop = false,
    this.padding,
    this.onTap,
    this.width,
    this.height,
    this.margin,
    this.color,
    this.offset = const Offset(0, 10),
    this.shadowColor,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedContainer(
        safeBottom: safeBottom,
        safeTop: safeTop,
        margin: margin,
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
          textColor: Colors.grey[100],
          child: isLoading
                ? Container(
                    width: 20,
                    height: 20,
                    child: progressIndicator(context),
                  )
                : Text(label),
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

  const TextyButton(
      {Key? key, this.padding, this.onTap, required this.label, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: TextButton(
        child: Text(
          label,
          style: textTheme(context).button?.copyWith(
                color: onTap == null
                    ? Colors.grey
                    : color ?? colorScheme(context).primary,
              ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
