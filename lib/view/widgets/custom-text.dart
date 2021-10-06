import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final double? letterSpacing;
  final double? height;
  final int? maxLines;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;

  const CustomText(this.text, {Key? key, this.color, this.fontSize, this.fontWeight, this.height, this.letterSpacing, this.fontFamily, this.textAlign, this.maxLines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: height,
        fontFamily: fontFamily,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}


