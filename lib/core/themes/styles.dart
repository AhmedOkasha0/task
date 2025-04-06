import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle textStyle({
    Color? color,
    Color? decorationColor,
    double? size,
    String? family,
    FontWeight? weight,
    double height = 1.3,
    bool? isItalic = false,
    TextDecoration? decoration,
    List<Shadow>? shadow,
  }) {
    return TextStyle(
      color: color ?? Colors.black,
      fontSize: (size ?? 14).sp,
      fontFamily: family ?? "cairo",
      fontWeight: weight ?? FontWeight.w500,
      height: height,
      fontStyle: isItalic! ? FontStyle.italic : null,
      textBaseline: TextBaseline.alphabetic,
      decoration: decoration,
      shadows: shadow,
      decorationColor: decorationColor,
    );
  }
}
