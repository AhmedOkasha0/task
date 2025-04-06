import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/themes/app_colors.dart';
import 'package:task/core/themes/styles.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      width: 375.w,
      decoration: BoxDecoration(color: AppColors.cF3F2F2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distributes space
        children: [
          Expanded(
            child: Center(
              child: Container(
                alignment: Alignment.center,
                width: 90.w,
                height: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  color: AppColors.cFFC542,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "بيع",
                      style: AppStyles.textStyle(
                          size: 20,
                          weight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SvgPicture.asset("assets/icons/cart.svg"),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SvgPicture.asset("assets/icons/weui_arrow-filled.svg"),
          ),
        ],
      ),
    );
  }
}
