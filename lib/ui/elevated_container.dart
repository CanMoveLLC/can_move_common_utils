import 'package:flutter/material.dart';

class ElevatedContainer extends StatelessWidget {
  final Widget child;

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
  final bool safeTop, safeBottom;
  final double? width;
  final double? height;

  ElevatedContainer({
    required this.child,
    this.radius,
    this.padding,
    this.height,
    this.width,
    this.safeTop = false,
    this.safeBottom = false,
    this.margin,
    this.color,
    this.offset = const Offset(0, 10),
    this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    var decoration = BoxDecoration(
      color: color,
      borderRadius: radius ?? BorderRadius.circular(8),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: shadowColor ?? Theme.of(context).colorScheme.secondary,
          offset: offset,
          blurRadius: 20,
          spreadRadius: 0,
        ),
      ],
    );
    return SafeArea(
      top: safeTop,
      bottom: safeBottom,
      child: AnimatedContainer(
        width: width,
        height: height,
        decoration: decoration,
        padding: padding ?? EdgeInsets.zero,
        margin: margin ?? EdgeInsets.zero,
        duration: Duration(milliseconds: 300),
        child: child,
      ),
    );
  }
}
