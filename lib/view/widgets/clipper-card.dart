import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  final List<Color> colors;
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BoxShape shape;
  final BorderRadius? borderRadius;
  final Alignment alignment;

  const GradientCard({
    Key? key,
    required this.colors,
    required this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.shape: BoxShape.rectangle,
    this.borderRadius,
    this.alignment: Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
          borderRadius: borderRadius,
          shape: shape,
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: colors)),
      child: child,
    );
  }
}
