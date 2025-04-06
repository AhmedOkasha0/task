import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task/core/themes/app_colors.dart';
import 'package:task/core/themes/styles.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "رسوم الدفع و التفاصيل",
              style: AppStyles.textStyle(
                size: 20,
                color: Colors.black,
                weight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Gap(15.h),
        Container(
          padding:
              EdgeInsets.only(top: 10.h, left: 37.w, right: 37.w, bottom: 16),
          alignment: Alignment.center,
          height: 157.h,
          width: 402.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: AppColors.c1B85F32B,
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "التكلفه الرئيسة",
                  style: AppStyles.textStyle(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
                Text(" 4,000 ر.س"),
              ]),
              Gap(10.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "التكلفه الرئيسة",
                  style: AppStyles.textStyle(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
                Text(
                  " 4,000 ر.س",
                  style: AppStyles.textStyle(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
              ]),
              Gap(10.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "التكلفه الرئيسة",
                  style: AppStyles.textStyle(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
                Text(
                  " 4,000 ر.س",
                  style: AppStyles.textStyle(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
              ]),
              Gap(12.h),
              Divider(
                color: Colors.white,
                thickness: 1.h,
              ),
              Gap(5.h),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "   4,045 ر.س",
                  style: AppStyles.textStyle(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
                Text(
                  " الاجمالي",
                  style: AppStyles.textStyle(
                    size: 14,
                    color: Colors.black,
                    weight: FontWeight.w400,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
