import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/themes/app_colors.dart';
import 'package:task/core/themes/styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? hight;
  final double? width;
  final Color? backgroundColor;
  final void Function()? onTap;
  final Color? textColor;
  final Color? borderColor;
  final double? textSize;

  const CustomButton(
      {super.key,
      required this.text,
      this.onTap,
      this.hight,
      this.width,
      this.backgroundColor,
      this.textColor,
      this.borderColor,
      this.textSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (hight ?? 60).h,
        width: (width ?? 343).w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor ?? AppColors.c1B85F3,
            width: 1.w,
          ),
          color: backgroundColor ?? AppColors.c1B85F3,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          text,
          style: AppStyles.textStyle(
            color: textColor ?? Colors.white,
            size: textSize ?? 16,
            weight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
